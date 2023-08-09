//
//  SearchView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText: String = ""
    @State private var searchedUsers: [User] = User.users
    
    private var usersCount: Int {
        searchedUsers.count
    }
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                LazyVStack(spacing: 12) {
                    
                    ForEach(searchedUsers) { user in
                        
                        HStack {
                            
                            Image(
                                user.personalImageUrl ?? "profilePicTemp"
                            )
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                
                                Text(user.username)
                                    .fontWeight(.semibold)
                                
                                if let fullName = user.fullName {
                                    
                                    Text(fullName)
                                }
                            }
                            .font(.footnote)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                    .padding(.top, 10)
                    .searchable(text: $searchText)
                }
                .navigationTitle(R.Strings.navigationSearchTitle.rawValue)
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
