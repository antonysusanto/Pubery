//
//  CourseStoryViewController.swift
//  Pubery
//
//  Created by Antony Susanto on 27/07/21.
//

import UIKit

class CourseStoryViewController: UIViewController {

	@IBOutlet weak var scrollView: UIScrollView!
	@IBOutlet weak var pageControl: UIPageControl!
	@IBOutlet weak var nextButton: UIButton!
	@IBOutlet weak var pageNumber: UILabel!
	
	var selectedCourse: Courses!
	var pages:[[Any]] = []
		
	var contentWidth: CGFloat = 0.0
	var contentHeight: CGFloat = 0.0
	var contentFrame = CGRect(x: 0, y: 0, width: 0, height: 0)
	var set = false
	
	override func viewDidLoad() {
		super.viewDidLoad()
		pages = selectedCourse.getContent().content
	}
	
	override func viewDidLayoutSubviews() {
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
		setupPageControl()
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
					
					let imageView = createImage(elementsContainer: elementsContainer, elementIndex: elementIndex, elements: elements, lastElementIndex: lastElementIndex, storyImage: pages[pageIndex][elementIndex] as! StoryImage)
					
					elements.append(imageView)
					
				} else if (pages[pageIndex][elementIndex] is StoryAnimatedImages) {
					
					let imageView = (pages[pageIndex][elementIndex] as! StoryAnimatedImages).create(elementsContainer: elementsContainer, elementIndex: elementIndex, elements: elements, lastElementIndex: lastElementIndex)
					
					elements.append(imageView)
					
				} else if (pages[pageIndex][elementIndex] is StoryLabel) {
					
					let label = createLabel(elementsContainer: elementsContainer, elementIndex: elementIndex, elements: elements, lastElementIndex: lastElementIndex, storyLabel: pages[pageIndex][elementIndex] as! StoryLabel)
					
					elements.append(label)
					
				} else if (pages[pageIndex][elementIndex] is StoryButton) {
					
					let button = createButton(elementsContainer: elementsContainer, elementIndex: elementIndex, elements: elements, lastElementIndex: lastElementIndex, storyButton: pages[pageIndex][elementIndex] as! StoryButton)
					
					elements.append(button)
					
				} //end of identifying elements
			} // end of looping elements
			contentView.addSubview(elementsContainer)
			elementsContainer.translatesAutoresizingMaskIntoConstraints = false
			elementsContainer.setConstraint(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor, padding: UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0))
			scrollView.addSubview(contentView)
		} //end of looping pages
	}
	
	@objc func buttonAction(sender: CustomStoryButton) {
		let storyBoard: UIStoryboard = UIStoryboard(name: sender.destination!, bundle: nil)
		let vc = storyBoard.instantiateViewController(withIdentifier: sender.destination!)
		self.navigationController?.pushViewController(vc, animated: false)
	}
	
	func setupPageControl() {
		pageControl.numberOfPages = pages.count
		pageControl.currentPage = 0
	}
	
	func getCurrentPage() -> Int {
		return Int(scrollView.contentOffset.x / contentWidth)
	}
	
	func updatePageControl()  {
		self.pageControl.currentPage = self.getCurrentPage()
		pageNumber.text = "\(self.getCurrentPage()+1) dari \(self.pages.count)"
		pageNumber.sizeToFit()
	}
	
	func setupButton() {
		nextButton.layer.cornerRadius = 14
	}

	@IBAction func dismiss(_ sender: Any) {
		self.navigationController?.popViewController(animated: true)
	}
	
	@IBAction func nextPage(_ sender: Any) {
		let currentPage = getCurrentPage()
		if (currentPage != pages.count-1) {
			scrollView.scrollRectToVisible(CGRect(x: contentWidth * CGFloat(currentPage+1), y: 0, width: contentWidth, height: 1), animated: true)
		} else {

		}

	}

	@IBAction func previousPage(_ sender: Any) {
		let currentPage = getCurrentPage()
		if (currentPage != 0) {
			scrollView.scrollRectToVisible(CGRect(x: contentWidth * CGFloat(currentPage-1), y: 0, width: contentWidth, height: 1), animated: true)
		}
	}
	
	func createImage(elementsContainer:UIView, elementIndex:Int, elements:[UIView], lastElementIndex:Int, storyImage:StoryImage) -> UIImageView{
		let imageView = UIImageView()
		imageView.image = UIImage(named: storyImage.imageName)
		imageView.contentMode = .scaleAspectFit
		
		elementsContainer.addSubview(imageView)
		
		imageView.translatesAutoresizingMaskIntoConstraints = false
		
		if (elementIndex == 0) {
			imageView.setConstraint(top: elementsContainer.topAnchor, leading: elementsContainer.leadingAnchor, bottom: elementsContainer.bottomAnchor, trailing: elementsContainer.trailingAnchor, padding: storyImage.padding, size: storyImage.size)
		} else {
			let previousElement = elements[elementIndex-1]
			imageView.setConstraint(top: previousElement.bottomAnchor, leading: elementsContainer.leadingAnchor, bottom: elementIndex == lastElementIndex ? elementsContainer.bottomAnchor : nil, trailing: elementsContainer.trailingAnchor, padding: storyImage.padding, size: storyImage.size)
		}
		
		return imageView
	}
	
	func createLabel(elementsContainer:UIView, elementIndex:Int, elements:[UIView], lastElementIndex:Int, storyLabel:StoryLabel) -> UILabel{
		let label = UILabel()

		if (storyLabel.type == .bold) {
			label.boldText(text: storyLabel.text, boldText: storyLabel.targetText)
		} else if (storyLabel.type == .highlight) {
			label.highlightText(text: storyLabel.text, coloredText: storyLabel.targetText, color: .red)
		} else if (storyLabel.type == .regular) {
			label.text = storyLabel.text
		}
		
		label.textAlignment = storyLabel.alignment
		label.font = label.font.withSize(storyLabel.fontSize)
		label.numberOfLines = 0
		label.lineBreakMode = .byWordWrapping
		label.sizeToFit()
		
		elementsContainer.addSubview(label)
		label.translatesAutoresizingMaskIntoConstraints = false
		
		if (elementIndex == 0 && lastElementIndex == 0) {
			label.setConstraint(top: elementsContainer.topAnchor, leading: elementsContainer.leadingAnchor, bottom: elementsContainer.bottomAnchor, trailing: elementsContainer.trailingAnchor, padding: storyLabel.padding, size: storyLabel.size)
		} else if (elementIndex == 0) {
			label.setConstraint(top: elementsContainer.topAnchor, leading: elementsContainer.leadingAnchor, bottom: nil, trailing: elementsContainer.trailingAnchor, padding: storyLabel.padding, size: storyLabel.size)
		} else {
			let previousElement = elements[elementIndex-1]
			label.setConstraint(top: previousElement.bottomAnchor, leading: elementsContainer.leadingAnchor, bottom: nil, trailing: elementsContainer.trailingAnchor, padding: storyLabel.padding, size: storyLabel.size)
		}
		
		return label
	}
	
	func createButton(elementsContainer:UIView, elementIndex:Int, elements:[UIView], lastElementIndex:Int, storyButton:StoryButton) -> CustomStoryButton{
		let button = CustomStoryButton()
		button.setTitle(storyButton.title, for: .normal)
		button.backgroundColor = UIColor(red: 202/255, green: 82/255, blue: 82/255, alpha: 1)
		button.layer.cornerRadius = 14
		button.destination = storyButton.destination
		button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
		
		elementsContainer.addSubview(button)
		button.translatesAutoresizingMaskIntoConstraints = false
		
		if (elementIndex == 0 && lastElementIndex == 0) {
			button.setConstraint(top: elementsContainer.topAnchor, leading: elementsContainer.leadingAnchor, bottom: elementsContainer.bottomAnchor, trailing: elementsContainer.trailingAnchor, padding: storyButton.padding, size: storyButton.size)
		} else if (elementIndex == 0) {
			button.setConstraint(top: elementsContainer.topAnchor, leading: elementsContainer.leadingAnchor, bottom: nil, trailing: elementsContainer.trailingAnchor, padding: storyButton.padding, size: storyButton.size)
		} else {
			let previousElement = elements[elementIndex-1]
			button.setConstraint(top: previousElement.bottomAnchor, leading: elementsContainer.leadingAnchor, bottom: nil, trailing: elementsContainer.trailingAnchor, padding: storyButton.padding, size: storyButton.size)
		}
		
		return button
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





