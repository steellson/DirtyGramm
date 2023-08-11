//
//  ProfileHeaderView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 11.08.2023.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let user: User
    
    var body: some View {
        
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
            
            ProfileGridView(posts: user.posts ?? [])
                .padding(1)
            
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: User.users[0])
    }
}