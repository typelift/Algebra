//
//  Lattice.swift
//  Algebra
//
//  Created by Robert Widmann on 11/22/14.
//  Copyright (c) 2014 TypeLift. All rights reserved.
//

protocol JoinSemilattice {
	typealias L
	class func join(L) -> L -> L
}

protocol MeetSemilattice {
	typealias L
	class func meet(L) -> L -> L
}

protocol Lattice : JoinSemilattice, MeetSemilattice { }

protocol BoundedJoinSemilattice : JoinSemilattice {
	class func least() -> L
}

protocol BoundedMeetSemilattice : MeetSemilattice {
	class func greatest() -> L
}

protocol BoundedLattice : BoundedJoinSemilattice, BoundedMeetSemilattice { }
