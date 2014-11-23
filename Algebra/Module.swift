//
//  Module.swift
//  Algebra
//
//  Created by Robert Widmann on 11/22/14.
//  Copyright (c) 2014 TypeLift. All rights reserved.
//

protocol LeftModule {
	typealias R : Semiring
	typealias M : Additive
	func *<>(R, M) -> M
}

protocol RightModule {
	typealias R : Semiring
	typealias M : Additive
	func <>*(M, R) -> M
}

protocol Module : LeftModule, RightModule {}
