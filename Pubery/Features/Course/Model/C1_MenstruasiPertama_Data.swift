//
//  C1_MenstruasiPertama_Data.swift
//  Pubery
//
//  Created by Antony Susanto on 03/08/21.
//

import UIKit

struct C1_MenstruasiPertama_Data {
	
	static let home = CourseHome(
		id: .C1_MenstruasiPertama,
		title: "Awal Menstruasi",
		imageName: "page2a"
	)
	
	static let detail = CourseDetail(
		category: "Reproduksi",
		title: "Awal Menstruasi",
		age: "Disarankan untuk anak usia 8 tahun ke atas",
		imageName: "page7"
	)
	
	static let introduction = CourseIntroduction(
		introduction: ["ini 1","ini 2"],
		advice: "rajin menabung",
		attention: "siap"
	)
	
	static let content = CourseContent(
		content: [
			[ //page1
			 StoryImage(
				 imageName: "page1",
				 padding:  UIEdgeInsets(top: 50, left: 10, bottom: 250, right: 10),
				 size: .zero
			 ),
			 StoryLabel(
				 text: "Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.",
				 type: .bold,
				 targetText: ["sakit perut", "tidak"],
				 alignment: .justified,
				 padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20),
				 size: .zero
			 ),
			 StoryLabel(
				 text: "Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.",
				 type: .highlight,
				 targetText: ["sakit perut", "menghilang"],
				 alignment: .justified,
				 padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20),
				 size: .zero
			 )
			],
			
			[ //page2
				StoryAnimatedImages(
					imageNames: ["page2a","page2b"],
					interval: 1,
					padding:  UIEdgeInsets(top: 50, left: 10, bottom: 250, right: 10),
					size: .zero
				),
				 StoryLabel(
					 text: "Putri merasakan perutnya seperti ditekan-tekan.",
					 padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20),
					 size: .zero
				 ),
				 StoryLabel(
					 text: "Suatu pagi Putri merasakan sakit perut.",
					 type: .bold,
					 targetText: ["Suatu pagi Putri merasakan sakit perut."],
					 alignment: .center,
					 padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20),
					 size: .zero
				 )
			],
			
			[ //page3
				 StoryImage(
					 imageName: "page3",
					 padding:  UIEdgeInsets(top: 120, left: 10, bottom: 250, right: 10),
					 size: .zero
				 ),
				StoryLabel(
					 text: "Ketika Putri membuka celana dalamnya di kamar mandi, Putri kaget karena menemukan bercak-bercak merah.",
					 padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20),
					 size: .zero
				 ),
				StoryLabel(
					 text: "Hmm, sepertinya Putri tahu apa yang terjadi pada dirinya, namun dia bingung apa yang harus dilakukan untuk pertama kali!",
					 padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20),
					 size: .zero
				 ),
			],
			
			[ //page4
				StoryLabel(
					text: "Bisakah kamu menebak apa yang sedang terjadi pada Putri?",
					type: .bold,
					targetText: ["Bisakah kamu menebak apa yang sedang terjadi pada Putri?"],
					alignment: .center,
					fontsize: 25,
					padding: UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20),
					size: .zero
				),
			],
			
			[ //page5
				 StoryImage(
					 imageName: "page5",
					 padding:  UIEdgeInsets(top: 50, left: 10, bottom: 350, right: 10),
					 size: .zero
				 ),
				StoryLabel(
					 text: "Akhirnya, walau dengan perasaan sedikit malu, Putri memanggil ibunya.",
					 padding: UIEdgeInsets(top: 40, left: 20, bottom: 0, right: 20),
					 size: .zero
				 ),
				StoryLabel(
					 text: "”Anak ibu sudah besar ya. Sudah dapat menstruasi pertama. Sekarang bersihkan dulu celananya lalu ambil celana yang bersih dan pakaikan pembalut,” ujar Ibu.",
					 padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20),
					 size: .zero
				 ),
				 StoryButton(
					 title: "Main", destination: "Pads",
					 padding: UIEdgeInsets(top: 20, left: 120, bottom: 0, right: 120),
					 size: CGSize(width: 0, height: 40)
				 ),
			],
			
			[ //page6
				StoryLabel(
					 text: "“Anak ibu pintar sekali! Sekarang yuk ambil celana dalam yang baru, kemudian pasangkan pembalut.”",
					 padding: UIEdgeInsets(top: 80, left: 20, bottom: 0, right: 20),
					 size: .zero
				 ),
				 StoryImage(
					 imageName: "page6",
					 padding:  UIEdgeInsets(top: 50, left: 10, bottom: 0, right: 10),
					 size: CGSize(width: 0, height: 250)
				 ),
				 StoryButton(
					 title: "Pasang Pembalut", destination: "Pads",
					 padding: UIEdgeInsets(top: 50, left: 120, bottom: 0, right: 120),
					 size: CGSize(width: 0, height: 40)
				 ),
			],
			
			[ //page7
				StoryLabel(
					 text: "Setelah itu, Putri diminta untuk istirahat selagi Ibu menyiapkan air putih hangat.",
					 padding: UIEdgeInsets(top: 80, left: 20, bottom: 0, right: 20),
					 size: .zero
				 ),
				 StoryImage(
					 imageName: "page7",
					 padding:  UIEdgeInsets(top: 20, left: 10, bottom: 0, right: 10),
					 size: CGSize(width: 0, height: 200)
				 ),
				StoryLabel(
					 text: "Walaupun perutnya masih sedikit sakit, Putri justru merasa gembira.",
					 padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20),
					 size: .zero
				 ),
				StoryLabel(
					 text: "“Sekarang aku sudah besar. Aku sudah paham apa yang harus dilakukan ketika menstruasi!”",
					 padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20),
					 size: .zero
				 ),
				StoryLabel(
					 text: "Bagaimana denganmu?",
					 padding: UIEdgeInsets(top: 40, left: 20, bottom: 0, right: 20),
					 size: .zero
				 ),
				 StoryButton(
					 title: "Paham",
					 destination: "CourseEnd",
					 padding: UIEdgeInsets(top: 40, left: 120, bottom: 0, right: 120),
					 size: CGSize(width: 0, height: 40)
				 ),
			],
		]
	)

}
