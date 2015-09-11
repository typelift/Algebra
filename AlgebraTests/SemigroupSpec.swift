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

		property("UInt obeys left and right associativity") <- forAll { (x : UInt, y : UInt, z : UInt) in
			return
				((x <> y) <> z == x <> (y <> z)) <?> "Left Associativity"
				^&&^
				(x <> (y <> z) == (x <> y) <> z) <?> "Right Associativity"
		}

		property("Int8 obeys left and right associativity") <- forAll { (x : Int8, y : Int8, z : Int8) in
			return
				((x <> y) <> z == x <> (y <> z)) <?> "Left Associativity"
				^&&^
				(x <> (y <> z) == (x <> y) <> z) <?> "Right Associativity"
		}

		property("UInt8 obeys left and right associativity") <- forAll { (x : UInt8, y : UInt8, z : UInt8) in
			return
				((x <> y) <> z == x <> (y <> z)) <?> "Left Associativity"
				^&&^
				(x <> (y <> z) == (x <> y) <> z) <?> "Right Associativity"
		}

		property("Int16 obeys left and right associativity") <- forAll { (x : Int16, y : Int16, z : Int16) in
			return
				((x <> y) <> z == x <> (y <> z)) <?> "Left Associativity"
				^&&^
				(x <> (y <> z) == (x <> y) <> z) <?> "Right Associativity"
		}

		property("UInt16 obeys left and right associativity") <- forAll { (x : UInt16, y : UInt16, z : UInt16) in
			return
				((x <> y) <> z == x <> (y <> z)) <?> "Left Associativity"
				^&&^
				(x <> (y <> z) == (x <> y) <> z) <?> "Right Associativity"
		}

		property("Int32 obeys left and right associativity") <- forAll { (x : Int32, y : Int32, z : Int32) in
			return
				((x <> y) <> z == x <> (y <> z)) <?> "Left Associativity"
				^&&^
				(x <> (y <> z) == (x <> y) <> z) <?> "Right Associativity"
		}

		property("UInt32 obeys left and right associativity") <- forAll { (x : UInt32, y : UInt32, z : UInt32) in
			return
				((x <> y) <> z == x <> (y <> z)) <?> "Left Associativity"
				^&&^
				(x <> (y <> z) == (x <> y) <> z) <?> "Right Associativity"
		}

		property("Int64 obeys left and right associativity") <- forAll { (x : Int64, y : Int64, z : Int64) in
			return
				((x <> y) <> z == x <> (y <> z)) <?> "Left Associativity"
				^&&^
				(x <> (y <> z) == (x <> y) <> z) <?> "Right Associativity"
		}

		property("UInt64 obeys left and right associativity") <- forAll { (x : UInt64, y : UInt64, z : UInt64) in
			return
				((x <> y) <> z == x <> (y <> z)) <?> "Left Associativity"
				^&&^
				(x <> (y <> z) == (x <> y) <> z) <?> "Right Associativity"
		}
	}
}
