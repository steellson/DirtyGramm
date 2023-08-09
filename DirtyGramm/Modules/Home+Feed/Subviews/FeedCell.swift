//
//  FeedCell.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        
        VStack(spacing: 5) {
            
            HStack {
                
                Image("profilePicTemp")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text("username111")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(5)
                
                Spacer()
            }
            .padding(5)
            
            Image("profilePicTemp")
                .resizable()
                .scaledToFill()
                .frame(height: 400) // temp
                .clipShape(Rectangle())
            
            HStack(spacing: 16) {
                
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
            }
            .padding([.top, .leading], 8)
            
            FeedLikeStatView()
            
            FeedDescriptionView()
            
            Text("20h ago")
                .font(.footnote)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 5)
                .padding(.leading, 10)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
