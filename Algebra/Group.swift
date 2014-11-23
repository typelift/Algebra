//
//  Group.swift
//  Algebra
//
//  Created by Robert Widmann on 11/22/14.
//  Copyright (c) 2014 TypeLift. All rights reserved.
//

protocol Group : Additive {
	class func invert(M) -> M
}

protocol AbelianGroup : Group { }
