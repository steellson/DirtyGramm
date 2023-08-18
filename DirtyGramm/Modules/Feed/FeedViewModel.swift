//
//  FeedViewModel.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 18.08.2023.
//

import Firebase

final class FeedViewModel: ObservableObject {
    
    @Published var posts: [Post] = []
    
    init() {
        Task { try await fethcPosts() }
    }
    
    @MainActor
    func fethcPosts() async throws {
        self.posts = try await PostService.fetchFeedPosts()
    }
}
