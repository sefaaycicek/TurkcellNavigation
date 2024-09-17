//
//  ViewController.swift
//  TurkcellNavigation
//
//  Created by Sefa Aycicek on 17.09.2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Hizmetlerimiz"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addLabel()
        //addLabel(addLabel(addLabel(addLabel())))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    @IBAction func homeScreenTapped(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    
    
    func addLabel(_ referanceView : UIView? = nil) -> UIView {
        let label = UILabel()
        label.text = "Selam"
        label.backgroundColor = UIColor.blue
        label.font = UIFont(name: "Helvetica", size: 16)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            label.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5)
        ])
        
        
        /*label.snp.makeConstraints { make in
            //make.centerX.equalToSuperview()
            //make.centerY.equalToSuperview()
            
            //make.center.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            if let referanceView = referanceView {
                make.top.equalTo(referanceView.snp.bottom).offset(20)
            } else {
                make.top.equalToSuperview().offset(100)
            }
        }*/
        
        return label
        
        
        
        /*apiCall(callback: { prm in
            prm.
        },
        callback2: { intPrm in
            
        })*/
    }
    
    // ()->() parametere almayan, return etmeyen bir method
    /*func method() {
        
    }
    
    func apiCall(callback : (String)->(), callback2 : (Int)->Void ) {
    }*/
    
}

