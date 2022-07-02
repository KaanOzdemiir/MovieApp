//
//  DateFormatHelper.swift
//  Helpers
//
//  Created by Kaan Ozdemir on 2.07.2022.
//

import Foundation

public struct DateFormatHelper {
    
    public enum DateFormat: String {
        case dd_MMMM_yyyy = "dd MMMM yyyy"
        case yyyy__MM__dd = "yyyy-MM-dd"
    }
    
    public static func format(_ dateString: String?, from: DateFormat, to: DateFormat) -> String {
        guard let dateString = dateString, !dateString.isEmpty else {
            return ""
        }
        
        let formatter = DateFormatter()
        formatter.dateFormat = from.rawValue
        
        
        guard let date = formatter.date(from: dateString) else {
            return ""
        }
        
        formatter.dateFormat = to.rawValue
        return formatter.string(from: date)
    }
}