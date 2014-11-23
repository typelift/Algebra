//
//  Semigroup.swift
//  Algebra
//
//  Created by Robert Widmann on 11/22/14.
//  Copyright (c) 2014 TypeLift. All rights reserved.
//

/// Magmas where the binary operator is associative.  That is:
///
///     (S <> S) <> S == S <> (S <> S)
protocol Semigroup : Magma { }