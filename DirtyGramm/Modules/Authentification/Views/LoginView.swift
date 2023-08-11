//
//  LoginView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct LoginView: View {
    
    @State private var emailText: String = ""
    @State private var passwordText: String = ""
            
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                Spacer()
                
                Text("DIRTYGRAMM")
                    .modifier(DirtyGrammTextModifier())
                    .scaleEffect(2)
                    .padding(.bottom, 40)
                
                TextField("Enter your email", text: $emailText)
                    .textInputAutocapitalization(.never)
                    .modifier(TextFieldModifier())
                
                SecureField("Enter your password", text: $passwordText)
                    .modifier(TextFieldModifier())
                
                Button {
                    
                } label: {
                    
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(24)
                
                Button {
                    
                } label: {
                    
                    Text("Log in")
                        .modifier(StandartSystemWideButtonMdifier())
                }
                
                LoginOrDividerView()

                Button {
                    
                } label: {
                    
                    Text("Go Fuck Yourself")
                        .font(.footnote)
                        .fontDesign(.serif)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .shadow(radius: 0.6)
                }
                .padding(.vertical)

                Spacer()
                
                Divider()
            }
            
            NavigationLink {
                
                AddEmailView()
                    .navigationBarBackButtonHidden()
            } label: {
                
                HStack(spacing: 3) {
                    
                    Text("Don't have an account?")
                        .fontWeight(.medium)
                    Text("Sign Up")
                        .fontWeight(.bold)
                }
                .font(.footnote)
            }
            .foregroundColor(.blue)
            .padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

