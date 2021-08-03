//
//  OnboardingViewController.swift
//  Pubery
//
//  Created by Antony Susanto on 27/07/21.
//

import UIKit

class OnboardingViewController: UIViewController, UIScrollViewDelegate {

	@IBOutlet weak var scrollView: UIScrollView!
	@IBOutlet weak var pageControl: UIPageControl!
	@IBOutlet weak var nextButton: UIButton!
	
	let images = ["onboarding1","onboarding2","onboarding3"]
	let titles = ["Education through storytelling","Interactive and Fun","Personalized Material"]
	let subtitles = ["Sekarang ayah dan ibu tidak perlu cemas bagaimana mengajarkan edukasi seks kepada anak","Memberikan pengalaman berbeda dalam mengajarkan seks edukasi dan cara belajar yang menyenangkan","Materi yang dipelajari akan disesuaikan dengan si kecil"]
	
	var contentWidth: CGFloat = 0.0
	var contentHeight: CGFloat = 0.0
	var contentFrame = CGRect(x: 0, y: 0, width: 0, height: 0)
	
	override func viewDidLoad() {
        super.viewDidLoad()
		self.view.layoutIfNeeded()
		
		setupScrollView()
		setupContent()
		setupPageControl()
		setupButton()
	}
	
	func setupScrollView(){
		scrollView.delegate = self
		scrollView.contentSize.width = scrollView.frame.size.width * CGFloat(titles.count)
		scrollView.contentSize.height = 1
		scrollView.isPagingEnabled = true
		scrollView.bounces = false
		scrollView.showsHorizontalScrollIndicator = false
	}
	
	func setupContent(){
		contentWidth = scrollView.frame.size.width
		contentHeight = scrollView.frame.size.height
		contentFrame.size = CGSize(width: contentWidth, height: contentHeight)
		
		for index in 0..<titles.count {
			contentFrame.origin.x = contentWidth * CGFloat(index)
			
			let page = OnboardingContentView(frame: contentFrame)
			page.imageView.image = UIImage(named: images[index])
			page.title.text = titles[index]
			page.subtitle.text = subtitles[index]
			
			scrollView.addSubview(page)
		}
	}
	
	func setupPageControl(){
		pageControl.numberOfPages = titles.count
		pageControl.currentPage = 0
	}
	
	func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
		// used by swiping
		updatePageControl()
	}
	
	func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
		// used by scrollRectToVisible
		updatePageControl()
	}
	
	func getCurrentPage() -> Int {
		return Int(scrollView.contentOffset.x / contentWidth)
	}
	
	func updatePageControl()  {
		self.pageControl.currentPage = self.getCurrentPage()
	}
	
	func setupButton(){
		nextButton.layer.cornerRadius = 14
	}

	@IBAction func skip(_ sender: Any) {
		let currentPage = getCurrentPage()
		if (currentPage != titles.count-1){
			scrollView.scrollRectToVisible(CGRect(x: contentWidth * CGFloat(currentPage+1), y: 0, width: contentWidth, height: 1), animated: true)
		} else {
			let story = UIStoryboard(name: "Home", bundle:nil)
			let vc = story.instantiateViewController(withIdentifier: "TabBar")
			UIApplication.shared.windows.first?.rootViewController = vc
			UIApplication.shared.windows.first?.makeKeyAndVisible()
			UserDefaults.standard.set(true, forKey: "onboardingShown")
		}

	}
}
