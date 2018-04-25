//
//  LinkRepository.swift
//  PreFRDB
//
//  Created by Masakazu Sano on 2018/04/25.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import Foundation
import RxSwift

struct LinkRepository {
    let dataStore: UserDataStore
    func get(with userId: String) -> Single<UserEntity> {
        return dataStore.get(key: userId)
    }
}

struct LinkDataStore {
    let provider = DataProvider.shared
    func get(key: String) -> Single<UserEntity> {
        return provider.getUser(key: key)
    }
}