//
//  Module.swift
//  Algebra
//
//  Created by Robert Widmann on 11/22/14.
//  Copyright (c) 2014 TypeLift. All rights reserved.
//

/// If R is a Ring and M is an abelian group, a Left Module defines a binary operation R *<> M -> M.
protocol LeftModule {
	associatedtype R : Semiring
	associatedtype A : Additive
	func *<>(_ : R, _ : A) -> A
}

/// If R is a Ring and M is an abelian group, a Right Module defines a binary operation M <>* R -> M.
protocol RightModule {
	associatedtype R : Semiring
	associatedtype M : Additive
	func <>* (_ : M, _ : R) -> M
}

/// A bimodule is a module with compatible left and right operations.
protocol Bimodule : LeftModule, RightModule {}

extension Int : LeftModule {
	typealias R = Int
	typealias A = Int
}
public func *<>(l : Int, r : Int) -> Int { return l * r }
extension Int8 : LeftModule {
	typealias R = Int
	typealias A = Int8
}
public func *<>(l : Int, r : Int8) -> Int8 { return Int8(l) * r }
extension Int16 : LeftModule {
	typealias R = Int
	typealias A = Int16
}
public func *<>(l : Int, r : Int16) -> Int16 { return Int16(l) * r }
extension Int32 : LeftModule {
	typealias R = Int
	typealias A = Int32
}
public func *<>(l : Int, r : Int32) -> Int32 { return Int32(l) * r }
extension Int64 : LeftModule {
	typealias R = Int
	typealias A = Int64
}
public func *<>(l : Int, r : Int64) -> Int64 { return Int64(l) * r }


extension Int : RightModule { }
public func <>*(l : Int, r : Int) -> Int { return l * r }

extension Int8 : RightModule { }
public func <>*(l : Int8, r : Int) -> Int8 { return l * Int8(r) }

extension Int16 : RightModule { }
public func <>*(l : Int16, r : Int) -> Int16 { return l * Int16(r) }

extension Int32 : RightModule { }
public func <>*(l : Int32, r : Int) -> Int32 { return l * Int32(r) }

extension Int64 : RightModule { }
public func <>*(l : Int64, r : Int) -> Int64 { return l * Int64(r) }


extension Int : Bimodule { }
extension Int8 : Bimodule { }
extension Int16 : Bimodule { }
extension Int32 : Bimodule { }
extension Int64 : Bimodule { }
