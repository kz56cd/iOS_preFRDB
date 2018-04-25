//
//  DatabaseReference+.swift
//  PreFRDB
//
//  Created by Masakazu Sano on 2018/04/25.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import Foundation
import Firebase
import RxSwift

extension DatabaseReference {
    func get<T: Entity>() -> Single<T> {
        return Single.create(subscribe: { observer in
            self.observeSingleEvent(of: .value, with: { snapshot in
                guard let json = snapshot.value else {
                     observer(.error(ProviderError.dataNotExist))
                    return
                }
                do {
//                    let data = try JSONSerialization.data(withJSONObject: json, options: .prettyPrinted)
                    let data = try JSONSerialization.data(withJSONObject: json)
                    let entity = try JSONDecoder().decode(T.self, from: data)
                    observer(.success(entity))
                } catch(let error) {
                    observer(.error(error))
                }
            })
            return Disposables.create()
        })
    }
}
