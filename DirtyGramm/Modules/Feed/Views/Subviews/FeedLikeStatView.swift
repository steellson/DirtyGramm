//
//  FeedLikeStatView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct FeedLikeStatView: View {
    
    var likes: Int
    var title: String {
        "likes"
    }
    
    var body: some View {
        
        HStack(spacing: 5) {
            Text(String.init(likes))
            Text(title)
            Spacer()
        }
        .padding(.leading, 10)
        .font(.footnote)
        .fontWeight(.semibold)
    }
}

struct FeedLikeStatView_Previews: PreviewProvider {
    static var previews: some View {
        FeedLikeStatView(likes: 0)
    }
}
