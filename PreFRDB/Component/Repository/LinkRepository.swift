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
    let dataStore: LinkDataStore
    func get(linkId: String) -> Single<LinkEntity> {
        return dataStore.get(key: linkId)
    }
}

struct LinkDataStore {
    let provider = DataProvider.shared
    func get(key: String) -> Single<LinkEntity> {
        return provider.getLink(key: key)
    }
}
