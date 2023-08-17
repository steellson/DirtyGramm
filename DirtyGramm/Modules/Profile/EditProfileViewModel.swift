//
//  EditProfileViewModel.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 17.08.2023.
//

import SwiftUI
import PhotosUI
import Firebase

@MainActor
final class EditProfileViewModel: ObservableObject {
    
    @Published var user: User
    
    @Published var selectedImage: PhotosPickerItem? {
        didSet { Task { await loadImage(fromItem: selectedImage) } }
    }
    
    @Published var profileImage: Image?
    @Published var nameText: String = ""
    @Published var bioText: String = ""
    
    init(user: User) {
        self.user = user
    }
    
    func loadImage(fromItem item: PhotosPickerItem?) async {
        guard
            let item = item,
            let data = try? await item.loadTransferable(type: Data.self),
            let image = UIImage(data: data)
        else { return }
        
        self.profileImage = Image(uiImage: image)
    }
    
    func updateUserData() async throws {
        var data = [String: Any]()
        
        if !nameText.isEmpty && user.fullName != nameText {
            data["fullName"] = nameText
        }
        
        if !bioText.isEmpty && user.bio != bioText {
            data["bio"] = bioText
        }
        
        if !data.isEmpty {
            try await Firestore.firestore().collection("users").document(user.id).updateData(data)
        }
    }
}
