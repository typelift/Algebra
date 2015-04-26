//
//  Lattice.swift
//  Algebra
//
//  Created by Robert Widmann on 11/22/14.
//  Copyright (c) 2014 TypeLift. All rights reserved.
//

/// A Join-Semilattice is a partially ordered set that defines a join operation (that is, has an 
/// operation that computes the least upper bound).
protocol JoinSemilattice {
	typealias L
	static func join(L) -> L -> L
}

/// A Meet-Semilattice is a partially ordered set that defines a meet operation (that is, has an 
/// operation that computes the greatest lower bound).
protocol MeetSemilattice {
	typealias L
	static func meet(L) -> L -> L
}

/// A Lattice is a partially ordered set that defines both a meet and join operation.
protocol Lattice : JoinSemilattice, MeetSemilattice { }

/// A Bounded Join-Semilattice is a partially ordered set that defines a join operation and
/// distinguishes a least (bottom) element.
protocol BoundedJoinSemilattice : JoinSemilattice {
	static func least() -> L
}

/// A Bounded Meet-Semilattice is a partially ordered set that defines a join operation and
/// distinguishes a greatest (top) element.
protocol BoundedMeetSemilattice : MeetSemilattice {
	static func greatest() -> L
}

/// A Bounded Lattice is a partially ordered set that defines a both meet and join operation and
/// distinguishes both a least and greatest element.
protocol BoundedLattice : BoundedJoinSemilattice, BoundedMeetSemilattice { }
