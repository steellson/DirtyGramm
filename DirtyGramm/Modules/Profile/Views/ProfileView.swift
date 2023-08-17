//
//  ProfileView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
        
    private var posts: [Post] {
        Post.posts.filter { $0.user?.username == user.username }
    }
    
    var body: some View {
        
        
        ScrollView {
            
            ProfileHeaderView(user: user)
            
            Divider()
            
            ProfileGridView(posts: user.posts ?? [])
                .padding(1)
        }
        .navigationTitle(user.username)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.users[0])
    }
}
