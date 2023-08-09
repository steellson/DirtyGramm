//
//  HomeView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                LazyVStack {
                    
                    ForEach(0...10, id: \.self) { post in
                        
                        FeedCell()
                            .padding(.bottom)
                        
                        Divider()
                            .padding(.horizontal, 8)
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("DIRTYGRAMM")
                        .bold()
                        .font(.callout)
                        .fontDesign(.monospaced)
                        .foregroundColor(.brown)
                        .overlay {
                            Circle()
                                .stroke(lineWidth: 1)
                                .scale(1.2)
                        }
                        .foregroundColor(.gray)
                        .shadow(radius: 2)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "paperplane")
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
