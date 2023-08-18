//
//  UploadPostViewModel.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 11.08.2023.
//

import Firebase
import PhotosUI
import SwiftUI

@MainActor
class UploadPostViewModel: ObservableObject {
    
    @Published var selectedImage: PhotosPickerItem? {
        didSet { Task { await  loadImage(from: selectedImage) }}
    }
    
    @Published var postImage: Image?
    
    private var uiImage: UIImage?

    
    func loadImage(from item: PhotosPickerItem?) async {
        guard
            let item = item,
            let data = try? await item.loadTransferable(type: Data.self),
            let image = UIImage(data: data)
        else { return }
        
        self.uiImage = image
        self.postImage = Image(uiImage: image)
    }
    
    func uploadPost(description: String?) async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        guard let uiImage = uiImage else { return }
        guard let imageUrl = try await UploadImageService.upload(image: uiImage) else { return }
        
        let postRef = Firestore.firestore().collection("posts").document()
        let post = Post(
            id: postRef.documentID,
            ownerUid: uid,
            description: description,
            imageUrl: imageUrl,
            likes: 0,
            timestamp: Date()
        )
        let encodedPost = try Firestore.Encoder().encode(post)
        
        try await postRef.setData(encodedPost)
    }
 }
