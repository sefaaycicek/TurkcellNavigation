//
//  LastScreenViewController.swift
//  TurkcellNavigation
//
//  Created by Sefa Aycicek on 17.09.2024.
//

import UIKit

class LastScreenViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Ana Sayfa"
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func logoutTapped(_ sender: Any) {
        self.tabBarController?.dismiss(animated: true)
        UserDefaults.standard.set(false, forKey: "user_logged_in")
    }
    
    @IBAction func homeScreenTapped(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        //self.navigationController?.popViewController(animated: true) navigation içindeki 1 önceki ekran.
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
