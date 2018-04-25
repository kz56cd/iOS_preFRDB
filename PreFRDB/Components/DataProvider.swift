//
//  DataProvider.swift
//  PreFRDB
//
//  Created by Masakazu Sano on 2018/04/25.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import Foundation
import Firebase
import RxSwift

final class DataProvider {
    static let shared = DataProvider()
    private init() {} // NOTE: to lock initiarize
    
    lazy var ref: DatabaseReference = {
        return Database.database().reference()
    }()
}

extension DataProvider {
    func getUser(key: String) -> Single<UserEntity> {
        return ref.child(DatabasePath.users.name).child(key).get()
    }
    func getLink(key: String) -> Single<LinkEntity> {
        return ref.child(DatabasePath.links.name).child(key).get()
    }
    func getUser(key: String) -> Single<CommentEntity> {
        return ref.child(DatabasePath.comments.name).child(key).get()
    }
}

enum DatabasePath: String {
    case users = "users"
    case links = "links"
    case comments = "comments"
    
    var name: String {
        return rawValue
    }
}

enum ProviderError: Error {
    case dataNotExist
}

