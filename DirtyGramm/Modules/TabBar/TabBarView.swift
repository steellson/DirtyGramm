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
            
            Text("Upload")
                .tabItem {
                    Image(systemName: "plus.square")
                }
            
            Text("Favourites")
                .tabItem {
                    Image(systemName: "heart")
                }
            
            ProfileView()
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
