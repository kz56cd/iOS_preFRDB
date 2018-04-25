//
//  CommentTranslator.swift
//  PreFRDB
//
//  Created by Masakazu Sano on 2018/04/25.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import Foundation

struct CommentTranslator {
    typealias Input = (CommentEntity, LinkEntity, UserEntity)
    typealias Output = CommentModel
    
    func translate(_ entity: (CommentEntity, LinkEntity, UserEntity))
        throws -> CommentModel {
        return CommentModel(
            commentEntity: entity.0,
            userEntity: entity.2,
            linkEntity: entity.1
        )
    }
}
