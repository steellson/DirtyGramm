//
//  SecondarySubtitleTextModifier.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct SecondarySubtitleTextModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.footnote)
            .foregroundColor(.gray)
            .padding(.horizontal, 10)
            .multilineTextAlignment(.center)
    }
}
