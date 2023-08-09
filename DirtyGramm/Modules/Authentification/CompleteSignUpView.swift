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
            
            Text(R.Strings.completeSignUpTitle.rawValue)
                .font(.title2)
                .fontWeight(.bold)
                .frame(maxWidth: UIScreen.main.bounds.width * 0.75)
            
            Text(usernameText)
                .font(.title2)
                .fontWeight(.bold)
            
            Text(R.Strings.completeSignUpSubtitle.rawValue)
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding(.vertical, 5)
            
            NavigationLink {

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
