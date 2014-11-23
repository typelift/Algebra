//
//  Monoid.swift
//  Algebra
//
//  Created by Robert Widmann on 11/22/14.
//  Copyright (c) 2014 TypeLift. All rights reserved.
//

protocol Additive : Semigroup {
	class func zero() -> M
}

protocol Multiplicative : Semigroup {
	class func one() -> M
}


