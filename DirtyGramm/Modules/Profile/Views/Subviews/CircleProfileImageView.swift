//
//  CircleProfileImageView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 18.08.2023.
//

import SwiftUI
import Kingfisher

enum CircleProfileImageViewSize: CGFloat {
    case xSmall = 40
    case small = 46
    case medium = 64
    case large = 80
}

struct CircleProfileImageView: View {
    
    let user: User
    
    let imageSize: CircleProfileImageViewSize
    
    var body: some View {
        
        if let imageUrl = user.personalImageUrl {
            KFImage(URL(string: imageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: imageSize.rawValue, height: imageSize.rawValue)
                .clipShape(Circle())
        } else {
            Image("person.circle.fill")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: imageSize.rawValue, height: imageSize.rawValue)
                .clipShape(Circle())
        }
    }
}

struct CircleProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleProfileImageView(user: User.users[0], imageSize: .large)
    }
}
