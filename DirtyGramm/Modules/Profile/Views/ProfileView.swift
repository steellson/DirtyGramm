//
//  ProfileView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var body: some View {
        
        
        ScrollView {
            
            ProfileHeaderView(user: user)
            
            Divider()
            
            ProfileGridView(user: user)
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
