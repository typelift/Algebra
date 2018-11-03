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
public protocol Semigroup : Magma { }

extension Bool : Semigroup { }
extension UInt : Semigroup { }
extension UInt8 : Semigroup { }
extension UInt16 : Semigroup { }
extension UInt32 : Semigroup { }
extension UInt64 : Semigroup { }
extension Int : Semigroup { }
extension Int8 : Semigroup { }
extension Int16 : Semigroup { }
extension Int32 : Semigroup { }
extension Int64 : Semigroup { }

