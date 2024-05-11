//
//  ViewController.swift
//  Netflix
//
//  Created by Arun on 09/04/24.
//

import UIKit

final class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nc1 = UINavigationController(rootViewController: HomeVC())
        let nc2 = UINavigationController(rootViewController: NFUpcomingVC())
        let nc3 = UINavigationController(rootViewController: NFSearchVC())
        let nc4 = UINavigationController(rootViewController: NFDownloadsVC())
         
        nc1.tabBarItem.image = UIImage(systemName: "house")
        nc2.tabBarItem.image = UIImage(systemName: "play.circle")
        nc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        nc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        nc1.title = "Home"
        nc2.title = "Comming Soon"
        nc3.title = "Searches"
        nc4.title = "Downloads"
        
        tabBar.tintColor = .label
        
        viewControllers = [nc1, nc2, nc3, nc4]
    }
}

