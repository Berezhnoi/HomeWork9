//
//  PasswordValidator.swift
//  HomeWork9
//
//  Created by rendi on 19.03.2024.
//

import Foundation

class PasswordValidator: TextValidator {
    
    override func validate(text: String) -> String? {
        let validationMessage: String? = super.validate(text: text);
        if validationMessage != nil {
            return validationMessage;
        }
        return TextValidator.maxTextCount(text: text, maxCount: 16);
    }
}
