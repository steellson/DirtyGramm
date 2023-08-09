//
//  StandartSystemWideButtonMdifier.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct StandartSystemWideButtonMdifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 360, height: 44)
            .background(Color.blue)
            .cornerRadius(10)
            .padding(24)
    }
}
