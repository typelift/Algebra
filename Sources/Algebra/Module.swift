//
//  Module.swift
//  Algebra
//
//  Created by Robert Widmann on 11/22/14.
//  Copyright (c) 2014 TypeLift. All rights reserved.
//

/// If R is a Ring and M is an abelian group, a Left Module defines a binary operation R *<> M -> M.
public struct LeftModule<R: Semiring, A: Additive> {
    public let multiply: (R, A) -> A
}
public enum LeftModules {
    public static let int = LeftModule<Int, Int>(multiply: *)
    public static let int8 = LeftModule<Int, Int8>(multiply: { Int8($0) * $1 })
    public static let int16 = LeftModule<Int, Int16>(multiply: { Int16($0) * $1 })
    public static let int32 = LeftModule<Int, Int32>(multiply: { Int32($0) * $1 })
    public static let int64 = LeftModule<Int, Int64>(multiply: { Int64($0) * $1 })
}

/// If R is a Ring and M is an abelian group, a Right Module defines a binary operation M <>* R -> M.
public struct RightModule<A: Additive, R: Semiring> {
    public let multiply: (A, R) -> A
}
public enum RightModules {
	public static let int = RightModule<Int, Int>(multiply: *)
    public static let int8 = RightModule<Int8, Int>(multiply: { $0 * Int8($1) })
    public static let int16 = RightModule<Int16, Int>(multiply: { $0 * Int16($1) })
    public static let int32 = RightModule<Int32, Int>(multiply: { $0 * Int32($1) })
    public static let int64 = RightModule<Int64, Int>(multiply: { $0 * Int64($1) })
}

/// A bimodule is a module with compatible left and right operations.
public struct Bimodule<R: Semiring, A: Additive> {
    public let left: LeftModule<R, A>
    public let right: RightModule<A, R>
}
enum Bimodules {
    public static let int = Bimodule(left: LeftModules.int, right: RightModules.int)
    public static let int8 = Bimodule(left: LeftModules.int8, right: RightModules.int8)
    public static let int16 = Bimodule(left: LeftModules.int16, right: RightModules.int16)
    public static let int32 = Bimodule(left: LeftModules.int32, right: RightModules.int32)
    public static let int64 = Bimodule(left: LeftModules.int64, right: RightModules.int64)
}
