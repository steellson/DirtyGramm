//
//  FeedDescriptionView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct FeedDescriptionView: View {
    
    var author: String = "username111"
    var description: String = "Some descriptioooooooooooooooooooooooooooowowowoowowowowowoowowowon"
    
    var body: some View {
        
        HStack {
            Text(author).fontWeight(.semibold) +
            Text(" ") +
            Text(description)
        }
        .font(.footnote)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 10)
    }
}

struct FeedDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        FeedDescriptionView()
    }
}
