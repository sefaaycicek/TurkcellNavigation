//
//  TurkcellStoryboard.swift
//  TurkcellNavigation
//
//  Created by Sefa Aycicek on 17.09.2024.
//

import Foundation
import UIKit

enum TurkcellStoryboard : String {
    case main = "Main"
    case home = "Home"
    
    var instance : UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: nil)
    }
    
    func viewController<T : UIViewController>(with viewControllerClass : T.Type) -> T {
        let storyboardId = (viewControllerClass as UIViewController.Type).storyboardID
        
        guard let scene = instance.instantiateViewController(withIdentifier: storyboardId) as? T else {
            fatalError("ViewController not found \(storyboardId)")
        }
        
        return scene
    }
}

extension UIViewController {
    class var storyboardID : String {
        return "\(self)"
    }
}
