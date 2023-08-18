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
        let snapshot = try await Firestore.firestore().collection("posts").getDocuments()
        self.posts = try snapshot.documents.compactMap { try $0.data(as: Post.self) }
        
        for i in 0 ..< posts.count {
            let post = posts[i]
            let ownerUid = post.ownerUid
            let postUser = try await UserService.fetchUser(with: ownerUid)
            posts[i].user = postUser
        }
    }
}
