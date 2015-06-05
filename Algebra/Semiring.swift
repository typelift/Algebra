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

extension UInt : Semiring { }
extension UInt8 : Semiring { }
extension UInt16 : Semiring { }
extension UInt32 : Semiring { }
extension UInt64 : Semiring { }
extension Int : Semiring { }
extension Int8 : Semiring { }
extension Int16 : Semiring { }
extension Int32 : Semiring { }
extension Int64 : Semiring { }
extension Float : Semiring { }
extension Double : Semiring { }
