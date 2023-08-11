//
//  AddEmailView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct AddEmailView: View {
    
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationStack {
            
            VStack(spacing: 12) {
                
                Text(R.Strings.addEmailTitleText.rawValue)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(R.Strings.addEmailSubtitleText.rawValue)
                    .modifier(SecondarySubtitleTextModifier())
                
                TextField("Email", text: $viewModel.email)
                    .textInputAutocapitalization(.never)
                    .modifier(TextFieldModifier())
                    .padding(.top)
                
                NavigationLink {
                    
                    CreateUsernameView()
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

struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView()
    }
}
