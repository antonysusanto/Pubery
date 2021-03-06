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
		imageDetails: ["c1_icon", "Awal Menstruasi"]
	)
	
	static let detail = CourseDetail(
		category: "Fisik dan Reproduksi",
		title: "Awal Menstruasi",
		age: "Disarankan untuk anak usia 8 tahun ke atas",
		imageDetails: ["c1_cover", "Anak perempuan menunjuk keatas dengan satu jari"]
	)
	
	static let introduction = CourseIntroduction(
		introduction: ["Mengenali tanda-tanda menstruasi","Apa yang harus dilakukan saat menstruasi terjadi pertama kali"],
		advice: "Orang tua diharapkan aktif dalam mengajak anak berdialog selama cerita berlangsung",
		attention: "Materi ini mengandung ilustrasi ringan terkait darah, disarankan untuk anak usia 8 tahun ke atas"
	)
	
	static let finish = CourseFinish(
		imageDetails: ["c1_finish", "Anak perempuan tersenyum"]
	)
	
	static let content = CourseContent(
		content: [
			[ //page1
			 StoryImage(
				 imageDetails: ["c1_page1", "Anak perempuan memegang perutnya yang sakit"],
				 padding:  UIEdgeInsets(top: 80, left: 10, bottom: 200, right: 10),
				 size: .zero
			 ),
			 StoryLabel(
				 text: "Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.",
                type: .highlight,
				 targetText: ["sakit perut"],
                alignment: .left,
				 padding: UIEdgeInsets(top: 40, left: 35, bottom: 0, right: 35),
				 size: .zero
			 ),
			],
			
			[ //page2
				StoryAnimatedImages(
					imageNames: ["c1_page2a","c1_page2b"],
					imageDescription: "Anak perempuan memegang perutnya yang sakit",
					interval: 1,
					padding:  UIEdgeInsets(top: 70, left: 10, bottom: 200, right: 10),
					size: .zero
				),
				 StoryLabel(
					 text: "Putri merasakan perutnya seperti ditekan-tekan.",
                    type: .bold,
                    targetText: ["ditekan-tekan."],
                    alignment: .left,
					 padding: UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
					 size: .zero
				 ),
    
			],
			
			[ //page3
				 StoryImage(
					 imageDetails: ["c1_page3", "Celana dengan noda darah merah"],
					 padding:  UIEdgeInsets(top: 120, left: 50, bottom: 250, right: 50),
					 size: .zero
				 ),
				StoryLabel(
					 text: "Ketika Putri membuka celana dalamnya di kamar mandi, Putri kaget karena menemukan bercak-bercak merah.",
                    type: .highlight,
                    targetText: ["bercak-bercak merah."],
                    alignment: .left,
					 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
					 size: .zero
				 ),
				StoryLabel(
					 text: "Hmm, sepertinya Putri tahu apa yang terjadi pada dirinya, namun dia bingung apa yang harus dilakukan untuk pertama kali!",
                    alignment: .left,
					 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
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
					 imageDetails: ["c1_page5","Tangan memegang celana yang kotor"],
					 padding:  UIEdgeInsets(top: 80, left: 10, bottom: 350, right: 10),
					 size: .zero
				 ),
				StoryLabel(
					 text: "Akhirnya, walau dengan perasaan sedikit malu, Putri memanggil ibunya.",
                    alignment: .left,
					 padding: UIEdgeInsets(top: 40, left: 35, bottom: 0, right: 35),
					 size: .zero
				 ),
				StoryLabel(
					 text: "???Anak ibu sudah besar ya. Sudah dapat menstruasi pertama. Sekarang bersihkan dulu celananya lalu ambil celana yang bersih dan pakaikan pembalut,??? ujar Ibu.",
                    alignment: .left,
					 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
					 size: .zero
				 ),
				 StoryButton(
					 title: "Main", destination: "Brushing",
					 padding: UIEdgeInsets(top: 20, left: 120, bottom: 0, right: 120),
					 size: CGSize(width: 0, height: 40)
				 ),
			],
			
			[ //page6
				StoryLabel(
					 text: "???Anak ibu pintar sekali! Sekarang yuk ambil celana dalam yang baru, kemudian pasangkan pembalut.???",
                    alignment: .left,
					 padding: UIEdgeInsets(top: 80, left: 35, bottom: 0, right: 35),
					 size: .zero
				 ),
				 StoryImage(
					 imageDetails: ["c1_page6","Celana dan pembalut"],
					 padding:  UIEdgeInsets(top: 50, left: 10, bottom: 0, right: 10),
					 size: CGSize(width: 0, height: 200)
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
                    alignment: .left,
					 padding: UIEdgeInsets(top: 80, left: 35, bottom: 0, right: 35),
					 size: .zero
				 ),
				 StoryImage(
					 imageDetails: ["c1_page7","Putri tidur di kasur"],
					 padding:  UIEdgeInsets(top: 20, left: 10, bottom: 0, right: 10),
					 size: CGSize(width: 0, height: 180)
				 ),
				StoryLabel(
					 text: "Walaupun perutnya masih sedikit sakit, Putri justru merasa gembira.",
                    alignment: .left,
					 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
					 size: .zero
				 ),
				StoryLabel(
					 text: "???Sekarang aku sudah besar. Aku sudah paham apa yang harus dilakukan ketika menstruasi!???",
                    alignment: .left,
					 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
					 size: .zero
				 ),
				StoryLabel(
					 text: "Bagaimana denganmu?",
                    type: .bold,
                    targetText: ["Bagaimana denganmu?"],
                    alignment: .center,
					 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
					 size: .zero
				 ),
				 StoryButton(
					 title: "Paham",
					 destination: "CourseEnd",
					 padding: UIEdgeInsets(top: 20, left: 120, bottom: 0, right: 120),
					 size: CGSize(width: 0, height: 40)
				 ),
			],
		]
	)

}
