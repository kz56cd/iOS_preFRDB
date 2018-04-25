//
//  CommentEntity.swift
//  PreFRDB
//
//  Created by Masakazu Sano on 2018/04/25.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import Foundation

struct CommentEntity: Entity {
    let link: String
    let body: String
    let author: String
}
