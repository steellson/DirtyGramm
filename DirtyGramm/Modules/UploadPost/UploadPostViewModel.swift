//
//  UploadPostViewModel.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 11.08.2023.
//

import Foundation
import PhotosUI
import SwiftUI

@MainActor
class UploadPostViewModel: ObservableObject {
    
    @Published var selectedImage: PhotosPickerItem? {
        didSet { Task { await  loadImage(from: selectedImage) }}
    }
    
    @Published var postImage: Image?
    
    
    func loadImage(from item: PhotosPickerItem?) async {
        guard
            let item = item,
            let data = try? await item.loadTransferable(type: Data.self),
            let image = UIImage(data: data)
        else { return }
        
        self.postImage = Image(uiImage: image)
    }
}
