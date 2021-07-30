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
			[StoryStyle1(), "page1", "Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang."],
			[StoryStyle1(), "page2a", "Putri merasakan perutnya seperti ditekan-tekan."],
//			[ImageStatic(), "page2b", "Hmm, sepertinya Putri tahu apa yang terjadi pada dirinya, namun dia bingung apa yang harus dilakukan untuk pertama kali!"],
			[StoryStyle2(), "page3", "Ketika Putri membuka celana dalamnya di kamar mandi, Putri kaget karena menemukan bercak-bercak merah.","Hmm, sepertinya Putri tahu apa yang terjadi pada dirinya, namun dia bingung apa yang harus dilakukan untuk pertama kali!"],
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
			view.backgroundColor = .red.withAlphaComponent(0.1)
			
			
			if (pages[pageIndex][0] is StoryStyle1){
				let v = StoryStyle1()
				v.imageView.image = UIImage(named: pages[pageIndex][1] as! String)
				v.label.text = pages[pageIndex][2] as? String
//				v.label.sizeToFit()
				view.addSubview(v)
				v.translatesAutoresizingMaskIntoConstraints = false
				NSLayoutConstraint.activate([
					v.topAnchor.constraint(equalTo: view.topAnchor,constant: 0),
					v.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -50),

					v.widthAnchor.constraint(equalTo: view.widthAnchor),
					v.centerXAnchor.constraint(equalTo: view.centerXAnchor),

				])
			} else if (pages[pageIndex][0] is StoryStyle2){
				let v = StoryStyle2()
				v.imageView.image = UIImage(named: pages[pageIndex][1] as! String)
				v.label.text = pages[pageIndex][2] as? String
				v.label2.text = pages[pageIndex][3] as? String
//				v.label.sizeToFit()
				view.addSubview(v)
				v.translatesAutoresizingMaskIntoConstraints = false
				NSLayoutConstraint.activate([
					v.topAnchor.constraint(equalTo: view.topAnchor,constant: 0),
					v.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -50),

					v.widthAnchor.constraint(equalTo: view.widthAnchor),
					v.centerXAnchor.constraint(equalTo: view.centerXAnchor),

				])
			}
			
			for elementIndex in 0..<pages[pageIndex].count {
				
				
//				view.addSubview(pages[pageIndex][elementIndex] as! UIView)
				
				
//				if (pages[pageIndex][elementIndex] is UIImage){
////					let imageView = UIImageView(frame: CGRect(x: 0, y: 80 * (elementIndex+1), width: 200, height: 200))
////					imageView.image = pages[pageIndex][elementIndex] as? UIImage
////					imageView.contentMode = .scaleAspectFit
//					let imageView = ImageStatic()
//					imageView.translatesAutoresizingMaskIntoConstraints = false
//					imageView.imageView.image = UIImage(named: "page3")
//
//
//					view.addSubview(imageView)
//					NSLayoutConstraint.activate([
//						imageView.topAnchor.constraint(equalTo: view.topAnchor,constant: 50),
//						imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: 50),
////						imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50),
////						imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 50),
////						imageView.widthAnchor.constraint(equalTo: view.widthAnchor),
//						imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
////						imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//
////								imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//		//					  imageView.leadingAnchor.constraint(
//		//						equalTo: self.leadingAnchor,
//		//						constant: 50),
//		//					  imageView.trailingAnchor.constraint(
//		//						equalTo: self.trailingAnchor,
//		//						constant: -padding)
//					])
//				} else if (pages[pageIndex][elementIndex] is String) {
////					let label = UILabel(frame: CGRect(x: 0, y: 120 + 80 * (elementIndex+1), width: 300, height: 120))
////					label.text = pages[pageIndex][elementIndex] as? String
////					label.numberOfLines = 0
////					label.lineBreakMode = .byWordWrapping
//////						l.textAlignment = .center
////					label.sizeToFit()
////					view.addSubview(label)
////					NSLayoutConstraint.activate([
////						label.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
////		//						imageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
////		//					  imageView.leadingAnchor.constraint(
////		//						equalTo: self.leadingAnchor,
////		//						constant: 50),
////		//					  imageView.trailingAnchor.constraint(
////		//						equalTo: self.trailingAnchor,
////		//						constant: -padding)
////					])
//				}
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

		}

	}

	@IBAction func previousPage(_ sender: Any) {
		let currentPage = getCurrentPage()
		if (currentPage != 0){
			scrollView.scrollRectToVisible(CGRect(x: contentWidth * CGFloat(currentPage-1), y: 0, width: contentWidth, height: 1), animated: true)
		}
	}
}
