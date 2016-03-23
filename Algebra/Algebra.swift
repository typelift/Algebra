//
//  Algebra.swift
//  Algebra
//
//  Created by Robert Widmann on 6/2/15.
//  Copyright (c) 2015 TypeLift. All rights reserved.
//

protocol Algebra {
	associatedtype R : Semiring
	associatedtype A
}

protocol Coalgebra : Algebra {
}

