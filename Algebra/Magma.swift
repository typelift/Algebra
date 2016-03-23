//
//  Magma.swift
//  Algebra
//
//  Created by Robert Widmann on 11/22/14.
//  Copyright (c) 2014 TypeLift. All rights reserved.
//

/// A magma is a set and a closed binary operator.  It is usually not studied because it forms the
/// basis of more interesting structures.
protocol Magma {
	associatedtype M
	func <>(_ : M, _ : M) -> M
}

extension Bool : Magma { typealias M = Bool }
public func <>(l : Bool, r : Bool) -> Bool { return l || r }

extension UInt : Magma { typealias M = UInt }
public func <>(l : UInt, r : UInt) -> UInt { return l &+ r }

extension UInt8 : Magma { typealias M = UInt8 }
public func <>(l : UInt8, r : UInt8) -> UInt8 { return l &+ r }

extension UInt16 : Magma { typealias M = UInt16 }
public func <>(l : UInt16, r : UInt16) -> UInt16 { return l &+ r }

extension UInt32 : Magma { typealias M = UInt32 }
public func <>(l : UInt32, r : UInt32) -> UInt32 { return l &+ r }

extension UInt64 : Magma { typealias M = UInt64 }
public func <>(l : UInt64, r : UInt64) -> UInt64 { return l &+ r }

extension Int : Magma { typealias M = Int }
public func <>(l : Int, r : Int) -> Int { return l &+ r }

extension Int8 : Magma { typealias M = Int8 }
public func <>(l : Int8, r : Int8) -> Int8 { return l &+ r }

extension Int16 : Magma { typealias M = Int16 }
public func <>(l : Int16, r : Int16) -> Int16 { return l &+ r }

extension Int32 : Magma { typealias M = Int32 }
public func <>(l : Int32, r : Int32) -> Int32 { return l &+ r }

extension Int64 : Magma { typealias M = Int64 }
public func <>(l : Int64, r : Int64) -> Int64 { return l &+ r }

extension Float : Magma { typealias M = Float }
public func <>(l : Float, r : Float) -> Float { return l + r }

extension Double : Magma { typealias M = Double }
public func <>(l : Double, r : Double) -> Double { return l + r }
