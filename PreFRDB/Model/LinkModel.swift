//
//  LinkModel.swift
//  PreFRDB
//
//  Created by Masakazu Sano on 2018/04/25.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import Foundation

struct LinkModel {
    let title: String
    let href: URL?
    let submitted: UserModel
}

extension LinkModel {
    init(
        linkEntity: LinkEntity,
        userEntity: UserEntity
        ) {
        
        title = linkEntity.title
        href = URL(string: linkEntity.href)
        submitted = UserModel(entity: userEntity)
    }
}
