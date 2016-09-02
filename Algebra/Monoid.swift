//
//  Monoid.swift
//  Algebra
//
//  Created by Robert Widmann on 11/22/14.
//  Copyright (c) 2014 TypeLift. All rights reserved.
//

/// Monoids are semigroups with some identity element.  If we call that element 'e', the following
/// holds for all 'a' and 'b' in the Monoid's set:
///
///     e <> a == a <> e == a
///
/// A monoid is said to be "Additive" if that identity is some zero (as in the case of addition over
/// the integers).  A monoid is said to be "Multiplicative" if that identity is some one (as in the 
/// case of multiplication over the integers).  While either one makes sense when referring to 
/// Monoids, given the choice, we default to Additive in this library.

/// Semigroups with a zero identity.
protocol Additive : Semigroup {
	static var zero : M { get }
}

/// Semigroups with a one identity.
protocol Multiplicative : Semigroup {
	static var one : M { get }
}

extension Bool : Additive {
	public static var zero : Bool { return false }
}
extension UInt : Additive {
	public static var zero : UInt { return 0 }
}
extension UInt8 : Additive {
	public static var zero : UInt8 { return 0 }
}
extension UInt16 : Additive {
	public static var zero : UInt16 { return 0 }
}
extension UInt32 : Additive {
	public static var zero : UInt32 { return 0 }
}
extension UInt64 : Additive {
	public static var zero : UInt64 { return 0 }
}
extension Int : Additive {
	public static var zero : Int { return 0 }
}
extension Int8 : Additive {
	public static var zero : Int8 { return 0 }
}
extension Int16 : Additive {
	public static var zero : Int16 { return 0 }
}
extension Int32 : Additive {
	public static var zero : Int32 { return 0 }
}
extension Int64 : Additive {
	public static var zero : Int64 { return 0 }
}


extension Bool : Multiplicative {
	public static var one : Bool { return true }
}
extension UInt : Multiplicative {
	public static var one : UInt { return 1 }
}
extension UInt8 : Multiplicative {
	public static var one : UInt8 { return 1 }
}
extension UInt16 : Multiplicative {
	public static var one : UInt16 { return 1 }
}
extension UInt32 : Multiplicative {
	public static var one : UInt32 { return 1 }
}
extension UInt64 : Multiplicative {
	public static var one : UInt64 { return 1 }
}
extension Int : Multiplicative {
	public static var one : Int { return 1 }
}
extension Int8 : Multiplicative {
	public static var one : Int8 { return 1 }
}
extension Int16 : Multiplicative {
	public static var one : Int16 { return 1 }
}
extension Int32 : Multiplicative {
	public static var one : Int32 { return 1 }
}
extension Int64 : Multiplicative {
	public static var one : Int64 { return 1 }
}

