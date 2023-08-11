//
//  CreateUsernameView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct CreateUsernameView: View {
    
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationStack {
            
            VStack(spacing: 12) {
                
                Text(R.Strings.addUsernameTitleText.rawValue)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(R.Strings.addUsernameSubtitleText.rawValue)
                    .modifier(SecondarySubtitleTextModifier())
        
                TextField("Username", text: $viewModel.username)
                    .textInputAutocapitalization(.never)
                    .modifier(TextFieldModifier())
                    .padding(.top)
                
                NavigationLink {
                    
                    CreatePasswordView()
                        .navigationBarBackButtonHidden()
                } label: {
                    
                    Text("Next")
                        .modifier(StandartSystemWideButtonMdifier())
                }
                
                Spacer()
            }
            .modifier(NavigationStackBackModifier(action: dismiss))
        }
    }
}

struct CreateUsernameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUsernameView()
    }
}
