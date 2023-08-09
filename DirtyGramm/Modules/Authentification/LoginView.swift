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
                    .bold()
                    .font(.callout)
                    .fontDesign(.monospaced)
                    .foregroundColor(.brown)
                    .overlay {
                        Circle()
                            .stroke(lineWidth: 1)
                            .scale(1.2)
                    }
                    .scaleEffect(2)
                    .foregroundColor(.gray)
                    .shadow(radius: 2)
                    .padding(.bottom, 40)
                
                TextField("Enter your email", text: $emailText)
                    .textInputAutocapitalization(.never)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                SecureField("Enter your password", text: $passwordText)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
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
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(24)
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

