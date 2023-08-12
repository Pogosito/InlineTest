//
//  InlineTestTests.swift
//  InlineTestTests
//
//  Created by Pogos Anesyan on 12.08.2023.
//

import XCTest
@testable import InlineTest

final class InlineTestTests: XCTestCase {

	func testMeasureDate() {
		let viewController = ViewController()

		// 1
		// inline - 3.164 sec
		// without inline - 3.218 sec

		// 2
		// inline - 3.073 sec
		// without inline - 3.077 sec

		// 3
		// inline - 2.902 sec
		// without inline - 2.834 sec

		// 4
		// inline - 2.926 sec
		// without inline - 2.992 sec

		// 5
		// inline - 2.866 sec
		// without inline - 3.039 sec

		// 6
		// inline - 3.420 sec
		// without inline - 2.940 sec

		// 7
		// inline - 2.931 sec
		// without inline - 3.149 sec

		// 8
		// inline - 2.902 sec
		// without inline - 2.829 sec

		// 9
		// inline - 2.886 sec
		// without inline - 2.917 sec

		// 10
		// inline - 2.943 sec
		// without inline -  2.992 sec
		measure {
			let t0 = DispatchTime.now().uptimeNanoseconds
			viewController.coolMethod()
			let t1 = DispatchTime.now().uptimeNanoseconds

			print("LOG:", Double(t1 - t0) / 1e9, "sec")
		}
	}
}
