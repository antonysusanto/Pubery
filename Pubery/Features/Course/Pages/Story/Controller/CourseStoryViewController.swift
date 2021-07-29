//
//  CourseStoryViewController.swift
//  Pubery
//
//  Created by Antony Susanto on 27/07/21.
//

import UIKit

class CourseStoryViewController: UIViewController, UIScrollViewDelegate {

	@IBOutlet weak var scrollView: UIScrollView!
	@IBOutlet weak var pageControl: UIPageControl!
	@IBOutlet weak var nextButton: UIButton!
	@IBOutlet weak var pageNumber: UILabel!
	
	let pages:[[Any]] =
		[
			[UIImage(named: "avatar-user-persona-face")!,"this is content"],
			[UIImage(named: "avatar-user-persona-face")!,"this is another content for page 2", "it has 2 paragraph"],
			["this is page 3", UIImage(named: "avatar-user-persona-face")!, "the image is at the middle"]
		]
		
	var contentWidth: CGFloat = 0.0
	var contentHeight: CGFloat = 0.0
	var contentFrame = CGRect(x: 0, y: 0, width: 0, height: 0)
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.view.layoutIfNeeded()
		
		setupScrollView()
		setupContent()
		setupPageControl()
		updatePageControl()
		setupButton()
		self.scrollView.backgroundColor = .gray.withAlphaComponent(0.2)
	}
	
	func setupScrollView(){
		scrollView.delegate = self
		scrollView.contentSize.width = scrollView.frame.size.width * CGFloat(pages.count)
		scrollView.contentSize.height = 1
		scrollView.isPagingEnabled = true
		scrollView.bounces = false
		scrollView.showsHorizontalScrollIndicator = false
	}
	
	func setupContent(){
		contentWidth = scrollView.frame.size.width
		contentHeight = scrollView.frame.size.height
		contentFrame.size = CGSize(width: contentWidth, height: contentHeight)
		
		for pageIndex in 0..<pages.count {
			contentFrame.origin.x = contentWidth * CGFloat(pageIndex)
			
			let view = UIView(frame: contentFrame)
			
			for elementIndex in 0..<pages[pageIndex].count {
				if (pages[pageIndex][elementIndex] is UIImage){
					let imageView = UIImageView(frame: CGRect(x: 0, y: 80 * (elementIndex+1), width: 100, height: 100))
					imageView.image = pages[pageIndex][elementIndex] as? UIImage
					imageView.contentMode = .scaleAspectFit
					view.addSubview(imageView)
				} else if (pages[pageIndex][elementIndex] is String) {
					let label = UILabel(frame: CGRect(x: 0, y: 80 * (elementIndex+1), width: 100, height: 100))
					label.text = pages[pageIndex][elementIndex] as? String
					label.numberOfLines = 0
					label.lineBreakMode = .byWordWrapping
//						l.textAlignment = .center
					view.addSubview(label)
				}
			}
			scrollView.addSubview(view)
		}
	}
	
	func setupPageControl(){
		pageControl.numberOfPages = pages.count
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
		pageNumber.text = "\(self.getCurrentPage()+1) dari \(self.pages.count)"
		pageNumber.sizeToFit()
	}
	
	func setupButton(){
		nextButton.layer.cornerRadius = 14
	}

	@IBAction func nextPage(_ sender: Any) {
		let currentPage = getCurrentPage()
		if (currentPage != pages.count-1){
			scrollView.scrollRectToVisible(CGRect(x: contentWidth * CGFloat(currentPage+1), y: 0, width: contentWidth, height: 1), animated: true)
		} else {
//				let story = UIStoryboard(name: "Home", bundle:nil)
//				let vc = story.instantiateViewController(withIdentifier: "TabBar")
//				UIApplication.shared.windows.first?.rootViewController = vc
//				UIApplication.shared.windows.first?.makeKeyAndVisible()
//			UserDefaults.standard.set(true, forKey: "onboardingShown")
		}

	}

	@IBAction func previousPage(_ sender: Any) {
		let currentPage = getCurrentPage()
		if (currentPage != 0){
			scrollView.scrollRectToVisible(CGRect(x: contentWidth * CGFloat(currentPage-1), y: 0, width: contentWidth, height: 1), animated: true)
		}
	}
}
