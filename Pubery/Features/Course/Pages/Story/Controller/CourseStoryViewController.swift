//
//  CourseStoryViewController.swift
//  Pubery
//
//  Created by Antony Susanto on 27/07/21.
//

import UIKit

class CourseStoryViewController: UIViewController {

	@IBOutlet weak var scrollView: UIScrollView!
	@IBOutlet weak var nextButton: UIButton!
	@IBOutlet weak var previousButton: UIButton!
	@IBOutlet weak var progressBar: UIProgressView!
	@IBOutlet weak var pageNumber: UILabel!
	@IBOutlet weak var closeButton: UIButton!
	
	var selectedCourse: Courses!
	var pages:[[Any]] = []
		
	var contentWidth: CGFloat = 0.0
	var contentHeight: CGFloat = 0.0
	var contentFrame = CGRect(x: 0, y: 0, width: 0, height: 0)
	var set = false
	
	override func viewDidLoad() {
		super.viewDidLoad()
		pages = selectedCourse.getContent().content
		self.view.accessibilityElements = [pageNumber!, scrollView!, previousButton!, nextButton!, closeButton!]
	}
	
	override func viewDidLayoutSubviews() {
		UIAccessibility.post(notification: .layoutChanged, argument: pageNumber)
		// storyboard autolayout need to be updated first from here
		// this function will trigger everytime the page is changed
		// so set an if statement to prevent repeated triggers as workaround
		if (set) { return }
		set = true
		// workaround for safearea color
		let safeAreaColor = UIView()
		safeAreaColor.backgroundColor = UIColor(red: 255/255, green: 228/255, blue: 163/255, alpha: 1)
		view.addSubview(safeAreaColor)
		safeAreaColor.translatesAutoresizingMaskIntoConstraints = false
		safeAreaColor.setConstraint(top: view.topAnchor, leading: view.leadingAnchor, bottom: scrollView.topAnchor, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
		setupScrollView()
		setupContent()
		updatePageControl()
		setupButton()
		
	}
	
	func setupScrollView() {
		scrollView.delegate = self
		scrollView.contentSize.width = scrollView.frame.size.width * CGFloat(pages.count)
		scrollView.contentSize.height = 1
		scrollView.isPagingEnabled = true
		scrollView.bounces = false
		scrollView.showsHorizontalScrollIndicator = false
		scrollView.translatesAutoresizingMaskIntoConstraints = false
	}
	
	func setupContent() {
		contentWidth = scrollView.frame.size.width
		contentHeight = scrollView.frame.size.height
		
		contentFrame.size = CGSize(width: contentWidth, height: contentHeight)
		
		for pageIndex in 0..<pages.count {
			contentFrame.origin.x = contentWidth * CGFloat(pageIndex)
			
			let contentView = UIView(frame: contentFrame)

			let backgroundImage = UIImageView()
			backgroundImage.image = UIImage(named: "background")
			backgroundImage.contentMode = .scaleToFill
			
			contentView.addSubview(backgroundImage)
			backgroundImage.translatesAutoresizingMaskIntoConstraints = false
			backgroundImage.setConstraint(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor)
		
			let elementsContainer = UIView()
			var elements: [UIView] = []
			let lastElementIndex = pages[pageIndex].count-1
			
			for elementIndex in 0..<pages[pageIndex].count {
				
				if (pages[pageIndex][elementIndex] is StoryImage) {
					
					let imageView = (pages[pageIndex][elementIndex] as! StoryImage).create(elementsContainer: elementsContainer, elementIndex: elementIndex, elements: elements, lastElementIndex: lastElementIndex)
					
					elements.append(imageView)
					
				} else if (pages[pageIndex][elementIndex] is StoryAnimatedImages) {
					
					let imageView = (pages[pageIndex][elementIndex] as! StoryAnimatedImages).create(elementsContainer: elementsContainer, elementIndex: elementIndex, elements: elements, lastElementIndex: lastElementIndex)
					
					elements.append(imageView)
					
				} else if (pages[pageIndex][elementIndex] is StoryLabel) {
					
					let label = (pages[pageIndex][elementIndex] as! StoryLabel).create(elementsContainer: elementsContainer, elementIndex: elementIndex, elements: elements, lastElementIndex: lastElementIndex)
					
					elements.append(label)
					
				} else if (pages[pageIndex][elementIndex] is StoryButton) {
					
					let button = (pages[pageIndex][elementIndex] as! StoryButton).create(elementsContainer: elementsContainer, elementIndex: elementIndex, elements: elements, lastElementIndex: lastElementIndex, navigator: self.navigationController, selectedCourse: selectedCourse)
					
					elements.append(button)
					
				} else if (pages[pageIndex][elementIndex] is StoryTappableImage) {
					
					let view = (pages[pageIndex][elementIndex] as! StoryTappableImage).create(elementsContainer: elementsContainer, elementIndex: elementIndex, elements: elements, lastElementIndex: lastElementIndex)
					
					elements.append(view)
					
				} //end of identifying elements
			} // end of looping elements
			contentView.addSubview(elementsContainer)
			elementsContainer.translatesAutoresizingMaskIntoConstraints = false
			elementsContainer.setConstraint(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor, padding: UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0))
			scrollView.addSubview(contentView)
		} //end of looping pages
	}

	func getCurrentIndex() -> Int {
		return Int(scrollView.contentOffset.x / contentWidth)
	}
	
	func updatePageControl()  {
		
		self.progressBar.setProgress(Float(self.getCurrentIndex()+1)/Float(self.pages.count), animated: true)
		
		pageNumber.text = "\(self.getCurrentIndex()+1) dari \(self.pages.count)"
		pageNumber.accessibilityLabel = "Halaman " + pageNumber.text!
		pageNumber.sizeToFit()
		if (self.getCurrentIndex() == 0) {
			self.previousButton.isHidden = true
		} else if (self.getCurrentIndex() == pages.count-1) {
			self.nextButton.isHidden = true
		} else {
			self.previousButton.isHidden = false
			self.nextButton.isHidden = false
		}
		
	}
	
	func setupButton() {
		nextButton.layer.cornerRadius = 14
	}

	@IBAction func dismiss(_ sender: Any) {
		self.navigationController?.popViewController(animated: true)
	}
	
	@IBAction func nextPage(_ sender: Any) {
		let currentPage = getCurrentIndex()
		if (currentPage != pages.count-1) {
			scrollView.scrollRectToVisible(CGRect(x: contentWidth * CGFloat(currentPage+1), y: 0, width: contentWidth, height: 1), animated: true)
		}
	}

	@IBAction func previousPage(_ sender: Any) {
		let currentPage = getCurrentIndex()
		if (currentPage != 0) {
			scrollView.scrollRectToVisible(CGRect(x: contentWidth * CGFloat(currentPage-1), y: 0, width: contentWidth, height: 1), animated: true)
		}
	}
}

extension CourseStoryViewController: UIScrollViewDelegate {
	func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
		// used by swiping
		updatePageControl()
	}
	
	func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
		// used by scrollRectToVisible
		updatePageControl()
	}
}





