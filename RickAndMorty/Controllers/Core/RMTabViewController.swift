//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Lokeswar Mamallan on 15/06/25.
//

import UIKit

final class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        // Do any additional setup after loading the view.
        setUpTabs()
    }
    
    private func setUpTabs(){
        let charectorVC = RMCharectorViewController()
        let loctionVC = RMLocationViewController()
        let episodesVC = RMEpisodesViewController()
        let settingsVC = RMCharectorViewController()
//        charectorVC.title = "Characters"
//        loctionVC.title = "Locations"
//        episodesVC.title = "Episodes"
//        settingsVC.title = "Settings"
//        
        charectorVC.navigationItem.largeTitleDisplayMode = .automatic
        loctionVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        
        
        let nav1 = UINavigationController(rootViewController: charectorVC)
        let nav2 = UINavigationController(rootViewController: loctionVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        
        nav1.tabBarItem = UITabBarItem(title: "Charectors", image: UIImage(systemName: "person"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear.circle"), tag: 4)
        
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
    [
        nav1,
        nav2,
        nav3,
        nav4
    ],
    animated: true)
        
        
        
    }


}

