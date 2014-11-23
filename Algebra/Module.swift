//
//  Module.swift
//  Algebra
//
//  Created by Robert Widmann on 11/22/14.
//  Copyright (c) 2014 TypeLift. All rights reserved.
//

/// If R is a Ring and M is an abelian group, a Left Module defines a binary operation R *<> M -> M.
protocol LeftModule {
	typealias R : Semiring
	typealias M : Additive
	func *<>(R, M) -> M
}

/// If R is a Ring and M is an abelian group, a Right Module defines a binary operation M <>* R -> M.
protocol RightModule {
	typealias R : Semiring
	typealias M : Additive
	func <>*(M, R) -> M
}

/// A bimodule is a module with compatible left and right operations.
protocol Bimodule : LeftModule, RightModule {}
