//
//  FeedDescriptionView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct FeedDescriptionView: View {
    
    let post: Post
    
    var body: some View {
        
        HStack {
            Text(post.user?.username ?? "none")
                .fontWeight(.semibold) +
            Text(" ") +
            Text(post.description ?? "")
        }
        .font(.footnote)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 10)
    }
}

struct FeedDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        FeedDescriptionView(post: Post.posts[0])
    }
}
