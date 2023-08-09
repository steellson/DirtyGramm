//
//  NavigationStackBackModifier.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct NavigationStackBackModifier: ViewModifier {
    
    var action: DismissAction
        
    func body(content: Content) -> some View {
        content
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "chevron.backward")
                        .onTapGesture {
                            action()
                        }
                }
            }
            .foregroundColor(.black)
            .padding(.vertical)
    }
}
