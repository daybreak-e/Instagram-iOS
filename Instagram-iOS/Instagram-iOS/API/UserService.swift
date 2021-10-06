//
//  UserService.swift
//  Instagram-iOS
//
//  Created by 이새벽 on 2021/10/06.
//

import Firebase

struct UserService {
    static func fetchUser(completion: @escaping(User) -> Void) {
        guard let uid = Auth.auth().currentUser?.uid else {return}
        COLLECTION_USERS.document(uid).getDocument { snapshot, error in
            guard let dictionary = snapshot?.data() else {return}
            
            let user = User(dictionary: dictionary)
            completion(user)
        }
    }
}
