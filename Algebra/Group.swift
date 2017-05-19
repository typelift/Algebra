//
//  Group.swift
//  Algebra
//
//  Created by Robert Widmann on 11/22/14.
//  Copyright (c) 2014 TypeLift. All rights reserved.
//

/// A Group is a Monoid where all elements have an inverse.  If we call an element of the Group 'a',
/// its inverse 'b', and some identity 'e', the following holds:
///
///     a <> b = b <> a = e
protocol Group : Additive {
	static func invert(_ : Self) -> Self
}

/// An Abelian Group is a group where the binary operation is commutative.  That is forall 'a', 'b',
/// the following holds:
///
///     a <> b = b <> a
protocol AbelianGroup : Group { }

extension Int : Group {
	static func invert(_ l : Int) -> Int { return -l }
}
extension Int8 : Group {
	static func invert(_ l : Int8) -> Int8 { return -l }
}
extension Int16 : Group {
	static func invert(_ l : Int16) -> Int16 { return -l }
}
extension Int32 : Group {
	static func invert(_ l : Int32) -> Int32 { return -l }
}
extension Int64 : Group {
	static func invert(_ l : Int64) -> Int64 { return -l }
}

extension Int : AbelianGroup { }
extension Int8 : AbelianGroup { }
extension Int16 : AbelianGroup { }
extension Int32 : AbelianGroup { }
extension Int64 : AbelianGroup { }
