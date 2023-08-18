//
//  EditProfileView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 17.08.2023.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @StateObject var viewModel: EditProfileViewModel
    
    init(user: User) {
        self._viewModel = StateObject(
            wrappedValue: EditProfileViewModel(user: user)
        )
    }
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Button(R.Strings.cancelButtonTitle.rawValue) {
                    dismiss()
                }
                .foregroundColor(.blue)
                
                Spacer()
                
                Text(R.Strings.editProfileTitle.rawValue)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button(R.Strings.doneButtonTitle.rawValue) {
                    Task {
                        try await viewModel.updateUserData()
                        dismiss()
                    }
                }
                .foregroundColor(.blue)
                .font(.subheadline)
                .fontWeight(.bold)
            }
            .padding(.horizontal)
            
            Divider()
            
            PhotosPicker(selection: $viewModel.selectedImage) {
                VStack {
                    
                    if let image = viewModel.profileImage {
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                    } else {
                        CircleProfileImageView(user: viewModel.user, imageSize: .large)
                    }
                    
                    Text(R.Strings.editProfilePictureTitle.rawValue)
                        .foregroundColor(.blue)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .padding(10)
                    
                }
            }
            .padding(.vertical, 8)
            
            Divider()
            
            VStack {
                
                EditProfileInfoView(
                    title: R.Strings.editNameTitle.rawValue,
                    placeholder: R.Strings.editNameFieldPlaceholder.rawValue,
                    text: $viewModel.nameText
                )
                
                EditProfileInfoView(
                    title: R.Strings.editBioTitle.rawValue,
                    placeholder: R.Strings.editBioFieldPlaceholder.rawValue,
                    text: $viewModel.bioText
                )
            }
            
            Spacer()
        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView(user: User.users[0])
    }
}
