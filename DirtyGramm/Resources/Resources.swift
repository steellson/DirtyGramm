//
//  File.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import Foundation

public enum R {
    
    enum Strings: String {
        
        // Navigation Titles
        case navigationHomeTitle = "Feed"
        case navigationSearchTitle = "Explore"
        case navigationFavouritesTitle = "Favourites"
        case navigationProfileTitle = "Profile"
        case cancelButtonTitle = "Cancel"
        case doneButtonTitle = "Done"
        
        // Sign Up Flow
        case addEmailTitleText = "Add your email"
        case addEmailSubtitleText = "You'll use this email to sign in to your account"

        case addUsernameTitleText = "Create username"
        case addUsernameSubtitleText = "Pick a username for your new account. You can always change it later."
        
        case addPasswordTitleText = "Create password"
        case addPasswordSubtitleText = "Your password must be at least 6 characters in lenght."
        
        case completeSignUpTitle = "Welcome to DIRTYGRAMM,"
        case completeSignUpSubtitle = "Click below to complete registration and start using DirtyGramm"
        
        // Profile
        case profileStatsPosts = "Posts"
        case profileStatsFollowers = "Followers"
        case profileStatsFollowing = "Following"
        case profileEditButton = "Edit Profile"
        case profileFollowButton = "Follow"
        
        // Edit profile
        case editProfileTitle = "Edit profile"
        case editProfilePictureTitle = "Edit profile picture"
        case editNameTitle = "Name"
        case editNameFieldPlaceholder = "Enter your name..."
        case editBioTitle = "Bio"
        case editBioFieldPlaceholder = "Some words about you..."
        
        // Upload Post
        case newPostViewTitle = "New Post"
        case uploadButtonTitle = "Upload"
        case descriptionTextFieldPlaceholder = "Enter your caption ..."
    }
}
