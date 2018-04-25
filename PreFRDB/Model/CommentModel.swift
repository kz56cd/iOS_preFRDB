//
//  CommentModel.swift
//  PreFRDB
//
//  Created by Masakazu Sano on 2018/04/25.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import Foundation

struct CommentModel {
    let link: LinkModel
    let body: String
    let author: UserModel
}

extension CommentModel {
    init(
        commentEntity: CommentEntity,
        userEntity: UserEntity,
        linkEntity: LinkEntity
        ) {
        
        link = LinkModel(
            linkEntity: linkEntity,
            userEntity: userEntity
        )
        body = commentEntity.body
        author = UserModel(entity: userEntity)
    }
}
