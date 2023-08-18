//
//  SearchView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct SearchView: View {
    
    @StateObject var viewModel = SearchViewModel()
    
    @State private var searchText: String = ""
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                LazyVStack(spacing: 12) {
                    
                    ForEach(viewModel.users) { user in
                        
                        NavigationLink(value: user) {
                            
                            HStack {
                                
                                CircleProfileImageView(user: user, imageSize: .xSmall)
                                
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
                    }
                    .padding(.top, 10)
                    .searchable(text: $searchText)
                }
                .navigationTitle(R.Strings.navigationSearchTitle.rawValue)
                .navigationBarTitleDisplayMode(.inline)
                .navigationDestination(for: User.self) { user in
                    ProfileView(user: user)
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
