//
//  BaseTabBarController.swift
//  App Store Clone
//
//  Created by Giomar Rodriguez on 5/23/21.
//

import UIKit

class BaseTabBarController : UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            initializeUIViewController(AppsSearchController(), "Search", "search"),
            initializeUIViewController(UIViewController(), "Todays", "today_icon"),
            initializeUIViewController(UIViewController(), "Apps", "apps")
            
        ]
        
    }
    
    fileprivate func initializeUIViewController(_ viewController: UIViewController ,_ title: String, _ imageName: String) -> UINavigationController {
        viewController.view.backgroundColor = .white
        viewController.navigationItem.title = title
        
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        return navController
    }
}
