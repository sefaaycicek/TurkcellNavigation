//
//  UserDefaultService.swift
//  TurkcellNavigation
//
//  Created by Sefa Aycicek on 17.09.2024.
//

import UIKit

protocol UserDefaultServiceProtocol {
    func setUserLoggedIn(isLogged : Bool)
    func getLoggedInState() -> Bool
}

class UserDefaultService: UserDefaultServiceProtocol {
   
    let USER_LOGGED_IN_KEY = "user_logged_in"
    
    func setUserLoggedIn(isLogged: Bool) {
        UserDefaults.standard.setValue(isLogged, forKey: USER_LOGGED_IN_KEY)
    }
    
    func getLoggedInState() -> Bool {
        return UserDefaults.standard.bool(forKey: USER_LOGGED_IN_KEY)
    }
}
