//
//  UserModel.swift
//  PreFRDB
//
//  Created by Masakazu Sano on 2018/04/25.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import Foundation

struct UserModel {
    let name: String
}

extension UserModel {
    init(entity: UserEntity) {
        name = entity.name
    }
}
