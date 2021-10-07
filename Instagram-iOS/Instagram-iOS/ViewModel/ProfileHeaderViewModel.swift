//
//  ProfileHeaderViewModel.swift
//  Instagram-iOS
//
//  Created by 이새벽 on 2021/10/07.
//

import Foundation

struct ProfileHeaderViewModel {
    let user: User
    
    var fullname: String {
        return user.fullname
    }
    
    var profileImageUrl: URL? {
        return URL(string: user.profileImageUrl)
    }
    
    init(user: User) {
        self.user = user
        
    }
}
