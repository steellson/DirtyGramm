//
//  ProfileGridViewModel.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 18.08.2023.
//

import Firebase

final class ProfileGridViewModel: ObservableObject {
    
    private let user: User
    
    @Published var posts: [Post] = []
    
    init(user: User) {
        self.user = user
        
        Task { try await fetchUserPosts() }
    }
    
    
    @MainActor
    func fetchUserPosts() async throws {
        self.posts = try await PostService.fetchUserPosts(with: user.id)
        
        for i in 0 ..< posts.count {
            posts[i].user = self.user
        }
    }
}
