//
//  CommentRepository.swift
//  PreFRDB
//
//  Created by Masakazu Sano on 2018/04/25.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import Foundation
import RxSwift

struct CommentRepository {
    let dataStore: UserDataStore
    func get(with linkId: String) -> Single<UserEntity> {
        return dataStore.get(key: linkId)
    }
}

struct CommentDataStore {
    let provider = DataProvider.shared
    func get(key: String) -> Single<UserEntity> {
        return provider.getUser(key: key)
    }
}
