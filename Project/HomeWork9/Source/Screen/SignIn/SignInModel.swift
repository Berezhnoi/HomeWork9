//
//  SignInModel.swift
//  HomeWork9
//

//

import Foundation

class SignInModel {
    
    weak var delegate: SignInModelDelegate?
    private let emailValidator: EmailValidator = EmailValidator();
    private let passwordValidator: PasswordValidator = PasswordValidator();
    
    var emailValid: Bool = false
    var passwordValid: Bool = false
    
    var email: String = "" {
        didSet {
            onDidSet();
        }
    }
    var password: String = "" {
        didSet {
            onDidSet();
        }
    }
    
    private func onDidSet() {
        var errorText: String?
        
        if let emailError = emailValidator.validate(text: email) {
            errorText = "Email: \(emailError)"
            emailValid = false
        } else {
            emailValid = true
        }
        
        if let passwordError = passwordValidator.validate(text: password) {
            errorText = "Password: \(passwordError)"
            passwordValid = false
        } else {
            passwordValid = true
        }
        
        let textType: TextType = errorText == nil ? .none : .error
        delegate?.didValidate(errorText: errorText, textType: textType)
    }
}
