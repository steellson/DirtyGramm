//
//  EditProfileViewModel.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 17.08.2023.
//

import SwiftUI
import PhotosUI
import Firebase


final class EditProfileViewModel: ObservableObject {
    
    @Published var selectedImage: PhotosPickerItem? {
        didSet { Task { await loadImage(fromItem: selectedImage) } }
    }
    
    @Published var profileImage: Image?
    @Published var nameText: String = ""
    @Published var bioText: String = ""
    
    func loadImage(fromItem item: PhotosPickerItem?) async {
        guard
            let item = item,
            let data = try? await item.loadTransferable(type: Data.self),
            let image = UIImage(data: data)
        else { return }
        
        self.profileImage = Image(uiImage: image)
    }
    
}
