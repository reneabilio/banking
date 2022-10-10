//
//  Date+Extensions.swift
//  banking
//
//  Created by René Piñeiro on 10/10/22.
//

import Foundation

extension DateFormatter {
    static let dynamicISOFormat = "yyyy-MM-dd"
}

private func dateFormatterBuilderWithDateFormat(_ dateFormat: String) -> DateFormatter {
    let dateFormatter = DateFormatter()
    dateFormatter.locale = Locale(identifier: "en_US")
    dateFormatter.dateFormat = dateFormat
    return dateFormatter
}

private let dynamicFrameworkFormatter: DateFormatter = {
    return dateFormatterBuilderWithDateFormat(DateFormatter.dynamicISOFormat)
}()

extension Date {
    func toString() -> String {
        return dynamicFrameworkFormatter.string(from: self)
    }
}

