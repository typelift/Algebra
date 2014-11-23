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
	class func invert(M) -> M
}

/// An Abelian Group is a group where the binary operation is commutative.  That is forall 'a', 'b',
/// the following holds:
///
///     a <> b = b <> a
protocol AbelianGroup : Group { }
