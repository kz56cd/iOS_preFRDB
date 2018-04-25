//
//  UserTranslator.swift
//  PreFRDB
//
//  Created by Masakazu Sano on 2018/04/25.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import Foundation

struct UserTranslator {
    typealias Input = UserEntity
    typealias Output = UserModel
    
    func translate(_ entity: UserEntity) throws -> UserModel {
        return UserModel(entity: entity)
    }
}
