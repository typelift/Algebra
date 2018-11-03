//
//  Idempotent.swift
//  Algebra
//
//  Created by Robert Widmann on 6/5/15.
//  Copyright (c) 2015 TypeLift. All rights reserved.
//

/// Semigroups with idempotent addition.  That is, for all `a` the following holds:
///
///     a + a == a
public protocol Idempotent : Additive { }

extension Bool : Idempotent { }
