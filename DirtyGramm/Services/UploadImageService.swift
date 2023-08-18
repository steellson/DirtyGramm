//
//  UploadImageService.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 18.08.2023.
//

import Firebase
import FirebaseStorage
import UIKit

struct UploadImageService {
    
    static func upload(image: UIImage?) async throws -> String? {
        guard let imageData = image?.jpegData(compressionQuality: 0.5) else { return nil }
        let fileName = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_pictures/\(fileName)")
        
        do {
            
            let _ = try await ref.putDataAsync(imageData)
            let url = try await ref.downloadURL()
            return url.absoluteString
            
        } catch let error {
            print("DEBUG: Upload image error: \(error.localizedDescription)")
            return nil
        }
    }
}
