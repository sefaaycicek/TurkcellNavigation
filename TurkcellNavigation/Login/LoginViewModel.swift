//
//  LoginViewModel.swift
//  TurkcellNavigation
//
//  Created by Sefa Aycicek on 17.09.2024.
//

import UIKit

class LoginViewModel: BaseViewModel {
    let userDefaultsService : UserDefaultServiceProtocol
   
    init(userDefaultsService : UserDefaultServiceProtocol = UserDefaultService()) {
        self.userDefaultsService = userDefaultsService
    }
    
    var isLoggedIn : Bool {
        return self.userDefaultsService.getLoggedInState()
    }
}
