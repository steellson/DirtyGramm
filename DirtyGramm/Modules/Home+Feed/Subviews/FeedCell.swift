//
//  FeedCell.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct FeedCell: View {
    
    let post: Post
    
    private var postOwner: User {
        post.user ?? User.users[0]
    }
    
    var body: some View {
        
        VStack(spacing: 5) {
            
            HStack {
                
                Image(
                    postOwner.personalImageUrl ?? "profilePicTemp"
                )
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text(postOwner.username)
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(5)
                
                Spacer()
            }
            .padding(5)
            
            Image(post.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(height: 400) // temp
                .clipShape(Rectangle())
            
            HStack(spacing: 16) {
                
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
            }
            .padding([.top, .leading], 8)
            
            FeedLikeStatView(likes: post.likes)
            
            FeedDescriptionView(post: post)
            
            Text(post.timestamp.description)
                .font(.footnote)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 5)
                .padding(.leading, 10)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell(post: Post.posts[3])
    }
}
