//
//  Magma.swift
//  Algebra
//
//  Created by Robert Widmann on 11/22/14.
//  Copyright (c) 2014 TypeLift. All rights reserved.
//

import Operadics

/// A magma is a set and a closed binary operator.  It is usually not studied because it forms the
/// basis of more interesting structures.
protocol Magma {
	static func <>(_ : Self, _ : Self) -> Self
}

extension Bool : Magma {
    public static func <>(l : Bool, r : Bool) -> Bool { return l || r }
}

extension UInt : Magma {
    public static func <>(l : UInt, r : UInt) -> UInt { return l &+ r }
}

extension UInt8 : Magma {
    public static func <>(l : UInt8, r : UInt8) -> UInt8 { return l &+ r }
}

extension UInt16 : Magma {
    public static func <>(l : UInt16, r : UInt16) -> UInt16 { return l &+ r }
}

extension UInt32 : Magma {
    public static func <>(l : UInt32, r : UInt32) -> UInt32 { return l &+ r }
}

extension UInt64 : Magma {
    public static func <>(l : UInt64, r : UInt64) -> UInt64 { return l &+ r }
}

extension Int : Magma {
    public static func <>(l : Int, r : Int) -> Int { return l &+ r }
}

extension Int8 : Magma {
    public static func <>(l : Int8, r : Int8) -> Int8 { return l &+ r }
}

extension Int16 : Magma {
    public static func <>(l : Int16, r : Int16) -> Int16 { return l &+ r }
}

extension Int32 : Magma {
    public static func <>(l : Int32, r : Int32) -> Int32 { return l &+ r }
}

extension Int64 : Magma {
    public static func <>(l : Int64, r : Int64) -> Int64 { return l &+ r }
}

extension Float : Magma {
    public static func <>(l : Float, r : Float) -> Float { return l + r }
}

extension Double : Magma {
    public static func <>(l : Double, r : Double) -> Double { return l + r }
}
