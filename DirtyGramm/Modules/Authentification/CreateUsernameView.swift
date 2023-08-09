//
//  CreateUsernameView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct CreateUsernameView: View {
    
    @State private var usernameText: String = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationStack {
            
            VStack(spacing: 12) {
                
                Text("Create username")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text("Pick a username for your new account. You can always change it later.")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.horizontal, 10)
                    .multilineTextAlignment(.center)
        
                TextField("Username", text: $usernameText)
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
