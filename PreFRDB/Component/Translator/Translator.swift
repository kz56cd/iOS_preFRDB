//
//  Translator.swift
//  PreFRDB
//
//  Created by Masakazu Sano on 2018/04/25.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import Foundation
import RxSwift

public protocol Translator {
    associatedtype Input
    associatedtype Output
    func translate(_: Input) throws -> Output
}

public extension ObservableType {
    public func map<T: Translator>(translator: T)
        -> Observable<T.Output> where Self.E == T.Input {
        return map { try translator.translate($0) }
    }
}

public extension Single {
    public func map<T: Translator>(translator: T)
        -> Single<T.Output> where PrimitiveSequence.E == T.Input {
            return map(translator: translator)
    }
}

extension Collection {
    public func map<T: Translator>(translator: T)
        throws -> [T.Output] where Self.Iterator.Element == T.Input {
            return try map { try translator.translate($0) }
    }
}
