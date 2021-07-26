//
//  OnboardingViewController.swift
//  Pubery
//
//  Created by Antony Susanto on 27/07/21.
//

import UIKit

class OnboardingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
	
	@IBAction func skip(_ sender: Any) {
		let story = UIStoryboard(name: "Home", bundle:nil)
		let vc = story.instantiateViewController(withIdentifier: "TabBar")
		UIApplication.shared.windows.first?.rootViewController = vc
		UIApplication.shared.windows.first?.makeKeyAndVisible()
		UserDefaults.standard.set(true, forKey: "onboardingShown")
	}
}
