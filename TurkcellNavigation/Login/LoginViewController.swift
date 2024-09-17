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
        addPhoneView()
        
        if viewModel.isLoggedIn {
            let controller2 = TurkcellStoryboard.home.viewController(with: HomeTabbarControllerViewController.self)
            controller2.modalPresentationStyle = .fullScreen
            self.present(controller2, animated: true)
        }
        
       
    }
    
    func addPhoneView() {
        let nib = UINib(nibName: "PhoneCountryView", bundle: nil)
        if let subView = nib.instantiate(withOwner: self).first as? PhoneCountryView {
            subView.translatesAutoresizingMaskIntoConstraints = false
            
            self.view.addSubview(subView)
            
            NSLayoutConstraint.activate([
                subView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                subView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
                subView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                subView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            ])
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
