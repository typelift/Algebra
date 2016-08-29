//
//  Semiring.swift
//  Algebra
//
//  Created by Robert Widmann on 11/22/14.
//  Copyright (c) 2014 TypeLift. All rights reserved.
//

/// A semiring is a weakened version of a ring where the underlying structure need only be a
/// Monoid and not a full Abelian Group.
protocol Semiring : Multiplicative, Additive { }
