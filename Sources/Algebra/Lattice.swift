//
//  Lattice.swift
//  Algebra
//
//  Created by Robert Widmann on 11/22/14.
//  Copyright (c) 2014 TypeLift. All rights reserved.
//

/// A Join-Semilattice is a partially ordered set that defines a join operation (that is, has an 
/// operation that computes the least upper bound).
public protocol JoinSemilattice {
	associatedtype L
	static func join(_ : L) -> (L) -> L
}

/// A Meet-Semilattice is a partially ordered set that defines a meet operation (that is, has an 
/// operation that computes the greatest lower bound).
public protocol MeetSemilattice {
	associatedtype L
	static func meet(_ : L) -> (L) -> L
}

/// A Lattice is a partially ordered set that defines both a meet and join operation.
public protocol Lattice : JoinSemilattice, MeetSemilattice { }

/// A Bounded Join-Semilattice is a partially ordered set that defines a join operation and
/// distinguishes a least (bottom) element.
public protocol BoundedJoinSemilattice : JoinSemilattice {
	static func least() -> L
}

/// A Bounded Meet-Semilattice is a partially ordered set that defines a join operation and
/// distinguishes a greatest (top) element.
public protocol BoundedMeetSemilattice : MeetSemilattice {
	static func greatest() -> L
}

/// A Bounded Lattice is a partially ordered set that defines a both meet and join operation and
/// distinguishes both a least and greatest element.
public protocol BoundedLattice : BoundedJoinSemilattice, BoundedMeetSemilattice { }

extension Bool : JoinSemilattice {
	public typealias L = Bool
	public static func join(_ l : Bool) -> (Bool) -> Bool {
		return { r in l  || r }
	}
}

extension Bool : MeetSemilattice {
	public static func meet(_ l : Bool) -> (Bool) -> Bool {
		return { r in l  && r }
	}
}

extension Bool : Lattice { }

extension Bool : BoundedJoinSemilattice {
	public static func least() -> Bool {
		return false
	}
}

extension Bool : BoundedMeetSemilattice {
	public static func greatest() -> Bool {
		return true
	}
}

extension Bool : BoundedLattice { }
