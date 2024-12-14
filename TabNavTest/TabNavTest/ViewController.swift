//
//  ViewController.swift
//  TabNavTest
//
//  Created by Don Mag on 12/14/24.
//

import UIKit

class MyTabBarController: UITabBarController, UITabBarControllerDelegate {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Set the delegate to self so we can use delegate methods
		self.delegate = self
	}
	
	// Delegate method called when a tab is selected
	func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
		
		// if the selected tab holds a UINavigationController
		if let vc = viewController as? UINavigationController {
			// pop to the root controller of that navigation controller
			vc.popToRootViewController(animated: false)
		}
		
	}
	
}

