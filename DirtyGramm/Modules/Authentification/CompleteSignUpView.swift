//
//  CompleteSignUpView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct CompleteSignUpView: View {
    
    @State private var username: String = "username"
    
    private var usernameText: String {
        username + "!"
    }
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text("Welcome to DIRTYGRAMM,")
                .font(.title2)
                .fontWeight(.bold)
                .frame(maxWidth: UIScreen.main.bounds.width * 0.75)
            
            Text(usernameText)
                .font(.title2)
                .fontWeight(.bold)
            
            Text("Click below to complete registration and start using DirtyGramm")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding(.vertical, 5)
            
            Button {
                
            } label: {
                
                Text("Complete Sign Up")
                    .modifier(StandartSystemWideButtonMdifier())
            }

            Spacer()
        }
    }
}

struct CompleteSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignUpView()
    }
}
