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
	class func zero() -> M
}

/// Semigroups with a one identity.
protocol Multiplicative : Semigroup {
	class func one() -> M
}


