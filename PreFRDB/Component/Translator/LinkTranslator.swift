//
//  LinkTranslator.swift
//  PreFRDB
//
//  Created by Masakazu Sano on 2018/04/25.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import Foundation

struct LinkTranslator {
    typealias Input = (LinkEntity, UserEntity)
    typealias Output = LinkModel
    
    func translate(_ entity: (LinkEntity, UserEntity))
        throws -> LinkModel {
        return LinkModel(
            linkEntity: entity.0,
            userEntity: entity.1
        )
    }
}
