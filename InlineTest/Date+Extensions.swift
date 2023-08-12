//
//  Date+Extensions.swift
//  InlineTest
//
//  Created by Pogos Anesyan on 12.08.2023.
//

import Foundation

@usableFromInline
enum DateFormatterType {

	case first

	case second

	case third
}


extension Date {

	@usableFromInline
	static let firstDateFormatter: DateFormatter = {
		let formatter = DateFormatter()
		formatter.dateFormat = "dd.MM.yyyy"
		return formatter
	}()

	@usableFromInline
	static let secondDateFormatter: DateFormatter = {
		let formatter = DateFormatter()
		formatter.dateFormat = "dd.MM.yyyy"
		return formatter
	}()

	@usableFromInline
	static let thirdDateFormatter: DateFormatter = {
		let formatter = DateFormatter()
		formatter.dateFormat = "d MMMM yyyy"
		formatter.locale = Locale(identifier: "ru_Ru")
		return formatter
	}()

	@inlinable
	func string(format: DateFormatterType = .second) -> String {
		switch format {
		case .first: return Date.firstDateFormatter.string(from: self)
		case .second: return Date.secondDateFormatter.string(from: self)
		case .third: return Date.thirdDateFormatter.string(from: self)
		}
	}
}
