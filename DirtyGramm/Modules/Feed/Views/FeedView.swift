//
//  FeedView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct FeedView: View {
    
    @StateObject var viewModel = FeedViewModel()
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                LazyVStack {
                    
                    ForEach(viewModel.posts) { post in
                        
                        FeedCell(post: post)
                            .padding(.bottom)
                        
                        Divider()
                            .padding(.horizontal, 8)
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle(R.Strings.navigationHomeTitle.rawValue)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("DIRTYGRAMM")
                        .modifier(DirtyGrammTextModifier())
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "paperplane")
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
