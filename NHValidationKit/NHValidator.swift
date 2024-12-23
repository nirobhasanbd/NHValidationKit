//
//  NHValidator.swift
//  NHValidationKit
//
//  Created by Md Nirob Hasan on 21/12/24.
//

import Foundation

public class NHValidator {
    public static func printMessage(_ message: String) {
        print(message)
    }

    public static func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return predicate.evaluate(with: email)
    }

}
