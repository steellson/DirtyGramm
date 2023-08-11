//
//  TabBarView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct TabBarView: View {
    
    var body: some View {
        
        TabView {
            
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            UploadPostView()
                .tabItem {
                    Image(systemName: "plus.square")
                }
            
            FavouritesView()
                .tabItem {
                    Image(systemName: "heart")
                }
            
            CurrentUserProfileView(user: User.users[0])
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .tint(.accentColor)
    }
    
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
