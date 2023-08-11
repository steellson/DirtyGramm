//
//  CurrentUserProfileView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 10.08.2023.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    let user: User
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                ProfileHeaderView(user: user)
            }
            .navigationTitle(R.Strings.navigationProfileTitle.rawValue)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    Button {
                        
                    } label: {
                        
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView(user: User.users[0])
    }
}