//
//  LoginViewController.swift
//  TurkcellNavigation
//
//  Created by Sefa Aycicek on 17.09.2024.
//

import UIKit

class LoginViewController: UIViewController {

    var viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if viewModel.isLoggedIn {
            let controller2 = TurkcellStoryboard.home.viewController(with: HomeTabbarControllerViewController.self)
            controller2.modalPresentationStyle = .fullScreen
            self.present(controller2, animated: true)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
