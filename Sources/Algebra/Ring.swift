//
//  Ring.swift
//  Algebra
//
//  Created by Robert Widmann on 11/22/14.
//  Copyright (c) 2014 TypeLift. All rights reserved.
//

/// A Rng is a Ring that lacks a multiplicative identity.
public protocol Rng : Group, Semiring { }

/// A Rig is a Ring with elements lacking an inverse.
public protocol Rig : Semiring, Additive { }

/// A Ring is a Group with a second operator that distributes over the group operation much like
/// how multiplication distributes over addition.
///
///     a • (b <> c) == (a • b) <> (a • c)
public protocol Ring : Rig, Rng { }
