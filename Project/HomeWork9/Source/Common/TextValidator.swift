//
//  TextValidator.swift
//  HomeWork9
//

//

import Foundation

class TextValidator {
    
    func validate(text: String) -> String? {
        
        if text.isEmpty {
            return "Поле вводу не має бути пустими"
        }
        
        if text.count < 3 {
            return "Кількість символів має бути не менше 3"
        }
        
        return nil
    }
    
    static func maxTextCount(text: String, maxCount: Int) -> String? {
        guard maxCount > 0 else { return nil };
        return text.count > maxCount ? "Максимальна кількість символів дорівнює \(maxCount)" : nil;
    }
}
