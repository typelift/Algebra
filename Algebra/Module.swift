//
//  Module.swift
//  Algebra
//
//  Created by Robert Widmann on 11/22/14.
//  Copyright (c) 2014 TypeLift. All rights reserved.
//

/// If R is a Ring and M is an abelian group, a Left Module defines a binary operation R *<> M -> M.
struct LeftModule<R: Semiring, A: Additive> {
    let multiply: (R, A) -> A
}
enum LeftModules {
    static let int = LeftModule<Int, Int>(multiply: *)
    static let int8 = LeftModule<Int, Int8>(multiply: { Int8($0) * $1 })
    static let int16 = LeftModule<Int, Int16>(multiply: { Int16($0) * $1 })
    static let int32 = LeftModule<Int, Int32>(multiply: { Int32($0) * $1 })
    static let int64 = LeftModule<Int, Int64>(multiply: { Int64($0) * $1 })
}

/// If R is a Ring and M is an abelian group, a Right Module defines a binary operation M <>* R -> M.
struct RightModule<A: Additive, R: Semiring> {
    let multiply: (A, R) -> A
}
enum RightModules {
	static let int = RightModule<Int, Int>(multiply: *)
    static let int8 = RightModule<Int8, Int>(multiply: { $0 * Int8($1) })
    static let int16 = RightModule<Int16, Int>(multiply: { $0 * Int16($1) })
    static let int32 = RightModule<Int32, Int>(multiply: { $0 * Int32($1) })
    static let int64 = RightModule<Int64, Int>(multiply: { $0 * Int64($1) })
}

/// A bimodule is a module with compatible left and right operations.
struct Bimodule<R: Semiring, A: Additive> {
    let left: LeftModule<R, A>
    let right: RightModule<A, R>
}
enum Bimodules {
    static let int = Bimodule(left: LeftModules.int, right: RightModules.int)
    static let int8 = Bimodule(left: LeftModules.int8, right: RightModules.int8)
    static let int16 = Bimodule(left: LeftModules.int16, right: RightModules.int16)
    static let int32 = Bimodule(left: LeftModules.int32, right: RightModules.int32)
    static let int64 = Bimodule(left: LeftModules.int64, right: RightModules.int64)
}
