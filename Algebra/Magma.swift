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
	func <> (_: M, _: M) -> M
}
