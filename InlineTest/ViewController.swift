//
//  ViewController.swift
//  InlineTest
//
//  Created by Pogos Anesyan on 12.08.2023.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	func coolMethod() {
		for _ in 0...1_000_000 {
		let type = [DateFormatterType.first, DateFormatterType.second, DateFormatterType.third].randomElement()
			_ = Date().string(format: type!)
		}
	}
}

