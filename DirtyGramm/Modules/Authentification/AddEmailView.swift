//
//  AddEmailView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct AddEmailView: View {
    
    @State private var emailText: String = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationStack {
            
            VStack(spacing: 12) {
                
                Text("Add your email")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text("You'll use this email to sign in to your account")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.horizontal, 10)
                
                TextField("Email", text: $emailText)
                    .textInputAutocapitalization(.never)
                    .modifier(TextFieldModifier())
                    .padding(.top)
                
                NavigationLink {
                    CreateUsernameView()
                        .navigationBarBackButtonHidden()
                } label: {
                    Text("Next")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(24)
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
