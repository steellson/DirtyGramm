//
//  ProfileView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    private var items: [GridItem] {
        [
            .init(.flexible(), spacing: 1),
            .init(.flexible(), spacing: 1),
            .init(.flexible(), spacing: 1)
        ]
    }
    
    var body: some View {
        
        
        ScrollView {
            
            // Top section view
            VStack(spacing: 10) {
                
                HStack {
                    
                    Image(user.personalImageUrl ?? "profilePicTemp")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                    
                    Spacer()
                    
                    HStack(spacing: 8) {
                        
                        ProfileStatsView(
                            value: user.posts?.count ?? 0,
                            nameOfStat: R.Strings.profileStatsFollowers.rawValue
                        )
                        
                        ProfileStatsView(
                            value: user.followers?.count ?? 0,
                            nameOfStat: R.Strings.profileStatsFollowers.rawValue
                        )
                        
                        ProfileStatsView(
                            value: user.following?.count ?? 0,
                            nameOfStat: R.Strings.profileStatsFollowing.rawValue
                        )
                    }
                }
                .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 4) {
                    
                    if let fullName = user.fullName {
                        
                        Text(fullName)
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                    
                    if let bio = user.bio {
                        
                        Text(bio)
                            .font(.footnote)
                    }
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                Button {
                    
                } label: {
                    
                    Text(R.Strings.profileEditButton.rawValue)
                        .frame(width: 368, height: 32)
                        .foregroundColor(.black)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    
                }
                
                Divider()
                
                // Bottom grid view
                LazyVGrid(columns: items, spacing: 1) {
                    
                    ForEach(0...15, id: \.self) { index in
                        
                        Image("profilePicTemp")
                            .resizable()
                    }
                }
                .padding(1)
                
            }
        }
        .navigationTitle(R.Strings.navigationProfileTitle.rawValue)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.users[0])
    }
}
