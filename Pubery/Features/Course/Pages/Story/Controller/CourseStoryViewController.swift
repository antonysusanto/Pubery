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
//			[
//				StoryImage(imageName: "page1", padding:  UIEdgeInsets(top: 50, left: 10, bottom: 250, right: 10), size: .zero),
////				StoryImage(imageName: "page1", padding:  UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 10), size: .zero),
//				StoryLabelRegular(text: "Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.", padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20), size: .zero),
////				StoryLabelRegular(text: "asdasd.", padding: UIEdgeInsets(top: 0, left: 20, bottom: 90, right: 20), size: .zero)
//			],
//			[
//				StoryImage(imageName: "page2a", padding:  UIEdgeInsets(top: 50, left: 10, bottom: 250, right: 10), size: .zero),
////				StoryImage(imageName: "page1", padding:  UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 10), size: .zero),
//				StoryLabelRegular(text: "Putri merasakan perutnya seperti ditekan-tekan. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.", padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20), size: .zero),
//				StoryLabelRegular(text: "Hmm, sepertinya Putri tahu apa yang terjadi pada dirinya, namun dia bingung apa yang harus dilakukan untuk pertama kali!", padding: UIEdgeInsets(top: 10, left: 20, bottom: 0, right: 20), size: .zero)
//			],
//			[
//				StoryLabelRegular(text: "Putri merasakan perutnya seperti ditekan-tekan. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.", padding: UIEdgeInsets(top: 150, left: 20, bottom: 0, right: 20), size: .zero),
//				StoryImage(imageName: "page3", padding:  UIEdgeInsets(top: 10, left: 10, bottom: 200, right: 10), size: .zero),
//				StoryLabelRegular(text: "Hmm, sepertinya Putri tahu apa yang terjadi pada dirinya, namun dia bingung apa yang harus dilakukan untuk pertama kali!", padding: UIEdgeInsets(top: 10, left: 20, bottom: 0, right: 20), size: .zero)
//			],
//			[
//				StoryLabelRegular(text: "Putri merasakan perutnya seperti ditekan-tekan. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.", padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20), size: .zero),
//			],
//			[
//				StoryLabelRegular(text: "Putri merasakan perutnya seperti ditekan-tekan. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.", padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20), size: .zero),
//			],
//			[
//				StoryLabelRegular(text: "Putri merasakan perutnya seperti ditekan-tekan. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.", padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20), size: .zero),
//			],
//			[
//				StoryImage(imageName: "page1", padding:  UIEdgeInsets(top: 50, left: 10, bottom: 250, right: 10), size: .zero),
////				StoryImage(imageName: "page1", padding:  UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 10), size: .zero),
//				StoryLabelRegular(text: "Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.", padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20), size: .zero),
////				StoryLabelRegular(text: "asdasd.", padding: UIEdgeInsets(top: 0, left: 20, bottom: 90, right: 20), size: .zero)
//			],
//			[
//				StoryImage(imageName: "page1", padding:  UIEdgeInsets(top: 50, left: 10, bottom: 250, right: 10), size: .zero),
////				StoryImage(imageName: "page1", padding:  UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 10), size: .zero),
//				StoryLabelRegular(text: "Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.", padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20), size: .zero),
////				StoryLabelRegular(text: "asdasd.", padding: UIEdgeInsets(top: 0, left: 20, bottom: 90, right: 20), size: .zero)
//			],
//			[
//				StoryImage(imageName: "page1", padding:  UIEdgeInsets(top: 50, left: 10, bottom: 250, right: 10), size: .zero),
////				StoryImage(imageName: "page1", padding:  UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 10), size: .zero),
//				StoryLabelRegular(text: "Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.", padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20), size: .zero),
////				StoryLabelRegular(text: "asdasd.", padding: UIEdgeInsets(top: 0, left: 20, bottom: 90, right: 20), size: .zero)
//			],
//			[
//				StoryImage(imageName: "page1", padding:  UIEdgeInsets(top: 50, left: 10, bottom: 250, right: 10), size: .zero),
//				StoryLabelRegular(text: "Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.", padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20), size: .zero),
//			],
			[
				
				StoryLabelRegular(text: "Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.", padding: UIEdgeInsets(top: 40, left: 20, bottom: 0, right: 20), size: .zero),
				StoryLabelRegular(text: "Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.", padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20), size: .zero),
				StoryLabelRegular(text: "Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.", padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20), size: .zero),
				StoryImage(imageName: "page1", padding:  UIEdgeInsets(top: 20, left: 10, bottom: 0, right: 10), size: CGSize(width: 0, height: 220)),
				StoryLabelRegular(text: "Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.", padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20), size: .zero),
			],
//			[StoryStyle1(), "page1", "Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang."],
//			[StoryStyle1(), "page2a", "Putri merasakan perutnya seperti ditekan-tekan."],
//			[ImageStatic(), "page2b", "Hmm, sepertinya Putri tahu apa yang terjadi pada dirinya, namun dia bingung apa yang harus dilakukan untuk pertama kali!"],
//			[StoryStyle2(), "page3", "Ketika Putri membuka celana dalamnya di kamar mandi, Putri kaget karena menemukan bercak-bercak merah.","Hmm, sepertinya Putri tahu apa yang terjadi pada dirinya, namun dia bingung apa yang harus dilakukan untuk pertama kali!"],
//			[ImageStatic.instantiate(imageName: "page1", label: "Halo")]
//			[ImageStatic(), "ada haptic", UIImage(named: "page1")!],
//			[UIImage(named: "page1")!,"Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang."],
//			[UIImage(named: "page2a")!,"Putri merasakan perutnya seperti ditekan-tekan "],
//			[UIImage(named: "page3")!, "Ketika Putri membuka celana dalamnya di kamar mandi, Putri kaget karena menemukan bercak-bercak merah.", "Hmm, sepertinya Putri tahu apa yang terjadi pada dirinya, namun dia bingung apa yang harus dilakukan untuk pertama kali!"],
//			["Bisakah kamu menebak apa yang sedang terjadi pada Putri?"],
//			[UIImage(named: "page5")!, "Akhirnya, walau dengan perasaan sedikit malu, Putri memanggil ibunya.", "”Anak ibu sudah besar ya. Sudah dapat menstruasi pertama. Sekarang bersihkan dulu celananya lalu ambil celana yang bersih dan pakaikan pembalut,” ujar Ibu."],
//			["“Anak ibu pintar sekali! Sekarang yuk ambil celana dalam yang baru, kemudian pasangkan pembalut.”", UIImage(named: "page6")!],
//			["Setelah itu, Putri diminta untuk istirahat selagi Ibu menyiapkan air putih hangat.", UIImage(named: "page7")!, "Walaupun perutnya masih sedikit sakit, Putri justru merasa gembira. “Sekarang aku sudah besar. Aku sudah paham apa yang harus dilakukan ketika menstruasi!”"],
		]
		
	var contentWidth: CGFloat = 0.0
	var contentHeight: CGFloat = 0.0
	var contentFrame = CGRect(x: 0, y: 0, width: 0, height: 0)
	var set = false
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	override func viewDidLayoutSubviews() {
		// storyboard autolayout need to be updated first from here
		// this function will trigger everytime the page is changed
		// so set an if statement to prevent repeated triggers as workaround
		if (set) { return }
		set = true
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
	}
	
	func setupContent() {
		contentWidth = scrollView.frame.size.width
		contentHeight = scrollView.frame.size.height
		
		contentFrame.size = CGSize(width: contentWidth, height: contentHeight)
		
		for pageIndex in 0..<pages.count {
			contentFrame.origin.x = contentWidth * CGFloat(pageIndex)
			
			let contentView = UIView(frame: contentFrame)
			
			let elementsContainer = UIView()

			let backgroundImage = UIImageView()
			backgroundImage.image = UIImage(named: "background")
			backgroundImage.contentMode = .scaleToFill
			
			contentView.addSubview(backgroundImage)
			backgroundImage.translatesAutoresizingMaskIntoConstraints = false
			backgroundImage.setConstraint(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor)
		
			var elements: [UIView] = []
			let lastElementIndex = pages[pageIndex].count-1
			
			for elementIndex in 0..<pages[pageIndex].count {
				
				
				if (pages[pageIndex][elementIndex] is StoryImage) {
					
					let storyImage = pages[pageIndex][elementIndex] as! StoryImage
					
					let imageView = UIImageView()
					imageView.backgroundColor = .red
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
					
					elements.append(imageView)
					
				} else if (pages[pageIndex][elementIndex] is StoryLabelRegular) {
					
					let storyLabel = pages[pageIndex][elementIndex] as! StoryLabelRegular
					
					let label = UILabel()
					label.text = storyLabel.text
					label.textAlignment = .justified
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
					
					elements.append(label)
				}
				contentView.addSubview(elementsContainer)
			}
			elementsContainer.translatesAutoresizingMaskIntoConstraints = false
			elementsContainer.setConstraint(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor, padding: UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0))
			scrollView.addSubview(contentView)
		}
	}
	
	func setupPageControl() {
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
	
	func setupButton() {
		nextButton.layer.cornerRadius = 14
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
}

extension UIView {
	
	func fillSuperview() {
		setConstraint(top: superview?.topAnchor, leading: superview?.leadingAnchor, bottom: superview?.bottomAnchor, trailing: superview?.trailingAnchor)
	}
	
	func constraintSize(to view: UIView) {
		widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
		heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
	}
	
	func setConstraint(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero) {
		translatesAutoresizingMaskIntoConstraints = false
		
		if let top = top {
			topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
		}
		
		if let leading = leading {
			leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
		}
		
		if let bottom = bottom {
			bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
		}
		
		if let trailing = trailing {
			trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
		}
		
		if size.width != 0 {
			widthAnchor.constraint(equalToConstant: size.width).isActive = true
		}
		
		if size.height != 0 {
			heightAnchor.constraint(equalToConstant: size.height).isActive = true
		}
	}
}

class CustomConstraint {
	var padding: UIEdgeInsets
	var size: CGSize
	
	init(padding: UIEdgeInsets, size: CGSize) {
		self.padding = padding
		self.size = size
	}
}

class StoryImage: CustomConstraint {
	var imageName: String
	
	init(imageName: String, padding: UIEdgeInsets, size: CGSize) {
		self.imageName = imageName
		super.init(padding: padding, size: size)
	}
}

class StoryLabelRegular: CustomConstraint {
	var text: String
	
	init(text: String, padding: UIEdgeInsets, size: CGSize) {
		self.text = text
		super.init(padding: padding, size: size)
	}
}
