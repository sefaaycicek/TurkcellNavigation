//
//  RegisterViewController.swift
//  TurkcellNavigation
//
//  Created by Sefa Aycicek on 17.09.2024.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerTapped(_ sender: Any) {
        
        let controller2 = TurkcellStoryboard.home.viewController(with: HomeTabbarControllerViewController.self)
        controller2.modalPresentationStyle = .fullScreen
        self.present(controller2, animated: true)
        
        
        UserDefaults.standard.set(true, forKey: "user_logged_in")
        
        /* yukardaki yapıya dönüştürdük
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "rootNavigation")
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true)
         */
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
