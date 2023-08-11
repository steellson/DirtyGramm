//
//  LoginOrDividerView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct LoginOrDividerView: View {
    
    var body: some View {
        
        HStack {
            
            Rectangle()
                .frame(width: (UIScreen.main.bounds.width / 2) - 40,
                       height: 0.5)
                .foregroundColor(.gray)
            
            Text("OR")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
            
            Rectangle()
                .frame(width: (UIScreen.main.bounds.width / 2) - 40,
                       height: 0.5)
                .foregroundColor(.gray)
        }
    }
}

struct LoginOrDividerView_Previews: PreviewProvider {
    static var previews: some View {
        LoginOrDividerView()
    }
}
