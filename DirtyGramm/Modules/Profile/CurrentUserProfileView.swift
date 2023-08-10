//
//  CurrentUserProfileView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 10.08.2023.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    private var items: [GridItem] {
        [
            .init(.flexible(), spacing: 1),
            .init(.flexible(), spacing: 1),
            .init(.flexible(), spacing: 1)
        ]
    }
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                // Top section view
                VStack(spacing: 10) {
                    
                    HStack {
                        
                        Image("profilePicTemp")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8) {
                            
                            ProfileStatsView(
                                value: 0,
                                nameOfStat: R.Strings.profileStatsFollowers.rawValue
                            )
                            
                            ProfileStatsView(
                                value: 20,
                                nameOfStat: R.Strings.profileStatsFollowers.rawValue
                            )
                            
                            ProfileStatsView(
                                value: 2,
                                nameOfStat: R.Strings.profileStatsFollowing.rawValue
                            )
                        }
                    }
                    .padding(.horizontal)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        
                        Text("Name Surname")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Profile Description")
                            .font(.footnote)
                        
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
            .toolbar {
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    Button {
                        
                    } label: {
                        
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView()
    }
}
