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
    
    @StateObject var viewModel = UploadPostViewModel()
    
    @Binding var tabIndex: Int
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Button {
                    clearDataAndReturnsToFeed()
                } label: {
                    Text(R.Strings.cancelButtonTitle.rawValue)
                }
                
                Spacer()
                
                Text(R.Strings.newPostViewTitle.rawValue)
                    .fontWeight(.semibold)

                Spacer()

                Button {
                    Task {
                        try await viewModel.uploadPost(description: descriptionText)
                        clearDataAndReturnsToFeed()
                    }
                } label: {
                    Text(R.Strings.uploadButtonTitle.rawValue)
                        .fontWeight(.semibold)
                }
                
            }
            .padding(.horizontal)
            
            HStack(spacing: 8) {
                
                if let image = viewModel.postImage {
                    
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipped()
                }
                
                TextField(
                    R.Strings.descriptionTextFieldPlaceholder.rawValue,
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
        .photosPicker(
            isPresented: $imagePickerPresented,
            selection: $viewModel.selectedImage
        )
    }
    
    private func clearDataAndReturnsToFeed() {
        descriptionText = ""
        viewModel.selectedImage = nil
        viewModel.postImage = nil
        tabIndex = 0
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView(tabIndex: .constant(0))
    }
}
