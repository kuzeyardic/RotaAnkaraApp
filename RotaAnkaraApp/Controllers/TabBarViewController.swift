//
//  TabBarViewController.swift
//  RotaAnkaraApp
//
//  Created by Berke Kuzey Ardıç on 19.07.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true

                let vc1 = HomePageViewController()
                let vc2 = FavoritesPageViewController()
                let vc3 = UserPageViewController()
                
                vc1.navigationItem.largeTitleDisplayMode = .always
                vc2.navigationItem.largeTitleDisplayMode = .always
                vc3.navigationItem.largeTitleDisplayMode = .always
                
                let nav1 = UINavigationController(rootViewController: vc1)
                let nav2 = UINavigationController(rootViewController: vc2)
                let nav3 = UINavigationController(rootViewController: vc3)

                
                nav1.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "house"), tag: 1)
                nav2.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "star"), tag: 1)
                nav3.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "person"), tag: 1)
                
                
                nav1.navigationBar.prefersLargeTitles = true
                nav2.navigationBar.prefersLargeTitles = true
                nav3.navigationBar.prefersLargeTitles = true
                
                setViewControllers([nav1, nav2, nav3], animated: false)
    }
    


}
