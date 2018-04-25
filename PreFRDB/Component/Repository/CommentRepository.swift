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
    let dataStore: CommentDataStore
    func get() -> Single<CommentEntity> {
        return dataStore.get()
    }
}

struct CommentDataStore {
    let provider = DataProvider.shared
    func get() -> Single<CommentEntity> {
        return provider.getComments()
    }
}
