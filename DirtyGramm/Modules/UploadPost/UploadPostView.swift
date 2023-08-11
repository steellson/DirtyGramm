//
//  UploadPostView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 11.08.2023.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    
    @State private var descriptionText: String = ""
    @State private var imagePickerPresented: Bool = false
    @State private var photoItem: PhotosPickerItem?
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Button {
                    
                } label: {
                    
                    Text(R.Strings.cancelButtonTitle.rawValue)
                }
                
                Spacer()
                
                Text(R.Strings.newPostViewTitle.rawValue)
                    .fontWeight(.semibold)

                Spacer()

                Button {
                    
                } label: {
                    
                    Text(R.Strings.uploadButtonTitle.rawValue)
                        .fontWeight(.semibold)
                }
                
            }
            .padding(.horizontal)
            
            HStack(spacing: 8) {
                
                Image("profilePicTemp")
                    .resizable()
                    .frame(width: 100, height: 100)
                
                TextField(
                    "Enter your caption ...",
                    text: $descriptionText,
                    axis: .vertical
                )
            }
            .padding(10)
            
            Spacer()
        }
        .onAppear {
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresented, selection: $photoItem)
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
