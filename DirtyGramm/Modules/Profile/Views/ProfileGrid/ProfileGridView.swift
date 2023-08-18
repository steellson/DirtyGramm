//
//  ProfilePostsGridView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 11.08.2023.
//

import SwiftUI
import Kingfisher

struct ProfileGridView: View {
    
    @StateObject var viewModel: ProfileGridViewModel
    
    init(user: User) {
        self._viewModel = StateObject(
            wrappedValue: ProfileGridViewModel(user: user)
        )
    }
    
    private var imageDimension: CGFloat {
        (UIScreen.main.bounds.width / 3) - 1
    }
    
    private var items: [GridItem] {
        [
            .init(.flexible(), spacing: 1),
            .init(.flexible(), spacing: 1),
            .init(.flexible(), spacing: 1)
        ]
    }
    
    var body: some View {
        
        LazyVGrid(columns: items, spacing: 1) {
            
            ForEach(viewModel.posts) { post in
                
                KFImage(URL(string: post.imageUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimension, height: imageDimension)
                    .clipped()
            }
        }
    }
}

struct ProfileGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileGridView(user: User.users[0])
    }
}
