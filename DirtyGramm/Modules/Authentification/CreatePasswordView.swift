//
//  CreatePasswordView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct CreatePasswordView: View {
    
    @State private var passwordText: String = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationStack {
            
            VStack(spacing: 12) {
                
                Text(R.Strings.addPasswordTitleText.rawValue)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(R.Strings.addPasswordSubtitleText.rawValue)
                    .modifier(SecondarySubtitleTextModifier())
        
                TextField("Password", text: $passwordText)
                    .textInputAutocapitalization(.never)
                    .modifier(TextFieldModifier())
                    .padding(.top)
                
                Button {
                    
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

struct CreatePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordView()
    }
}
