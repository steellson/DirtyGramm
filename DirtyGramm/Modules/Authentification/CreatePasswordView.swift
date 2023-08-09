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
                
                Text("Create password")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text("Your password must be at least 6 characters in lenght.")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.horizontal, 10)
                    .multilineTextAlignment(.center)
        
                TextField("Password", text: $passwordText)
                    .textInputAutocapitalization(.never)
                    .modifier(TextFieldModifier())
                    .padding(.top)
                
                Button {
                    
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

struct CreatePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordView()
    }
}
