//
//  EditProfileInfoView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 17.08.2023.
//

import SwiftUI

struct EditProfileInfoView: View {
    
    let title: String
    let placeholder: String

    @Binding var text: String
    
    var body: some View {
        
        HStack {
            
            Text(title)
                .padding(.leading, 8)
                .frame(width: 100, alignment: .leading)
            
            VStack {
                
                TextField(placeholder, text: $text)
                
                Divider()
            }
        }
        .font(.subheadline)
        .frame(height: 36)
    }
}

//struct EditProfileInfoView_Previews: PreviewProvider {
//    static var previews: some View {
//        EditProfileInfoView(title: "Name", placeholder: "Enter name", text: <#T##Binding<String>#>)
//    }
//}
