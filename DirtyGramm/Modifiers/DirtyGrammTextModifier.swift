//
//  DirtyGrammTextModifier.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct DirtyGrammTextModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .bold()
            .font(.callout)
            .fontDesign(.monospaced)
            .foregroundColor(.brown)
            .overlay {
                Circle()
                    .stroke(lineWidth: 1)
                    .scale(1.2)
            }
            .foregroundColor(.gray)
            .shadow(radius: 2)
    }
}
