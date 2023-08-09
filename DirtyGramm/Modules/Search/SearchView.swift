//
//  SearchView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                LazyVStack(spacing: 12) {
                    
                    ForEach(0...6, id: \.self) { user in
                        HStack {
                            
                            Image("profilePicTemp")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                
                                Text("username111")
                                    .fontWeight(.semibold)
                                
                                Text("Name Surname")
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
