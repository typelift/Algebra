//
//  SemigroupSpec.swift
//  Algebra
//
//  Created by Robert Widmann on 7/28/15.
//  Copyright © 2015 TypeLift. All rights reserved.
//

import Algebra
import XCTest
import SwiftCheck

class SemigroupSpec : XCTestCase {
	func testProperties() {
		property("Int obeys left and right associativity") <- forAll { (x : Int, y : Int, z : Int) in
			return
				((x <> y) <> z == x <> (y <> z)) <?> "Left Associativity"
				^&&^
				(x <> (y <> z) == (x <> y) <> z) <?> "Right Associativity"
		}
	}
}
