//
//  UseCase.swift
//  PreFRDB
//
//  Created by Masakazu Sano on 2018/04/25.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import Foundation
import RxSwift

struct UseCase {
    let usersRepository: UserRepository
    let linksRepository: LinkRepository
    let commentsRepository: CommentRepository
    
//    func getComments() -> Single<[CommentModel]> {
//        // WIP
//    }
}
