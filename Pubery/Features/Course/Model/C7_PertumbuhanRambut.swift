//
//  C7_PertumbuhanRambut.swift
//  Pubery
//
//  Created by Antony Susanto on 27/08/21.
//

import UIKit

struct C7_PertumbuhanRambut_Data {
	static let home = CourseHome(
		id: .C7_PertumbuhanRambut,
		title: "Pertumbuhan Rambut",
		imageDetails: ["c7_icon", "Pertumbuhan Rambut"]
	)
	
	static let detail = CourseDetail(
		category: "Fisik",
		title: "Pertumbuhan Rambut",
		age: "Disarankan untuk anak usia 8 tahun ke atas",
		imageDetails: ["c7_cover", "anak laki-laki menyapa dengan mengangkat tangan"]
	)
	
	static let introduction = CourseIntroduction(
		introduction: ["Penjelasan tentang pertumbuhan rambut ketika pubertas","Mengapa pertumbuhan rambut dapat terjadi"],
		advice: "Orang tua diharapkan aktif dalam mengajak anak berdialog selama cerita berlangsung",
		attention: " "
	)
	
	static let finish = CourseFinish(
		imageDetails: ["c7_finish", "Anak laki-laki tersenyum"]
	)
	
	static let content = CourseContent(
		content: [
			[//page1
				StoryImage(
				 imageDetails: ["c7_page1", "tiga anak laki-laki sedang berjalan"],
				 padding:  UIEdgeInsets(top: 120, left: 20, bottom: 200, right: 35),
				 size: .zero
				),
				StoryLabel(
				 text: "Pada suatu hari, ketika Putra dan teman-temannya sedang dalam perjalanan pulang dari sekolah mereka melihat iklan pencukur rambut.",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
				 size: .zero
				)
			],
			
			[//page2
                StoryLabel(
                 text: "“Eh, temen temen liat deh kalo kalian udah punya jenggot kalian akan beli ini nih!” celetuk Putra.",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 80, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
				StoryImage(
				 imageDetails: ["c7_page2", "anak laki-laki menunjuk papan iklan pencukur rambut"],
				 padding:  UIEdgeInsets(top: 50, left: 35, bottom: 200, right: 35),
				 size: .zero
				),
				StoryLabel(
				 text: " “Emang seumuran kita udah perlu beli ya?” timpal temannya.",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
				 size: .zero
				)
			],
			
			[//page3
				StoryImage(
				 imageDetails: ["c7_page3", "Ketiga anak laki-laki saling melihat dagu Mereka"],
                    //padding:  UIEdgeInsets(top: 150, left: 20, bottom: 180, right: 35),
				 padding:  UIEdgeInsets(top: 200, left: 20, bottom: 230, right: 35),
				 size: .zero
				),
				StoryLabel(
				 text: "“Hmm harusnya sih gitu”, balas temannya lagi. Mereka lantas saling mengamati dagu mereka dan menemukan adanya rambut yang keluar dari dagu Putra.",
				 alignment: .left,
                    // padding: UIEdgeInsets(top: 0, left: 35, bottom: 0, right: 35),
				 padding: UIEdgeInsets(top: 40, left: 35, bottom: 0, right: 35),
				 size: .zero
				)
			],
			
			[//page4
				StoryLabel(
				 text: "“Kamu ada nih Put! wah, sudah berapa lama??” tanya temannya itu dengan penasaran. ",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 80, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
                StoryLabel(
                 text: "“Baru baru ini sih, “ balas Putra.",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 30, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
				StoryImage(
				 imageDetails: ["c7_page4", "anak laki-laki memiliki jenggot pada dagunya"],
				 padding:  UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
				 size: CGSize(width: 0, height: 240)
				),
                StoryButton(
                    title: "Cukur",
                    destination: "Shaving",
                    padding: UIEdgeInsets(top: 50, left: 120, bottom: 0, right: 120),
                    size: CGSize(width: 0, height: 40)
                )
			],
			
			[//page5
				StoryImage(
				 imageDetails: ["c6_page5", "Tanda tanya"],
				 padding: UIEdgeInsets(top: 150, left: 35, bottom: 300, right: 35),
					size: .zero
				),
				StoryLabel(
				 text: "Kenapa fase pubertas menimbulkan pertumbuhan pada rambut, ya?",
					type: .bold,
					targetText: ["Kenapa fase pubertas menimbulkan pertumbuhan pada rambut, ya?"],
				 alignment: .center,
					fontsize: 25,
				 padding: UIEdgeInsets(top: 0, left: 35, bottom: 0, right: 35),
					size: .zero
				)
			],
			
			[//page6
				StoryLabel(
				 text: "Memasuki usia remaja, anak laki-laki mulai mengalami gejala pubertas seperti rambut-rambut yang mulai tumbuh. ",
					type: .highlight,
					targetText: [" "],
				 alignment: .left,
				 padding: UIEdgeInsets(top: 80, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryImage(
				 imageDetails: ["c7_page6", "Letak centang pada bagian tumbuhnya rambut pada kedua ketiak, jenggot dan kemaluan"],
				 padding:  UIEdgeInsets(top: 45, left: 35, bottom: 0, right: 35),
                    size: CGSize(width: 0, height: 305)
                   // size: .zero
				),
				StoryLabel(
				 text: "biasanya pada bagian wajah, dada, ketiak, punggung, dan area kemaluan mereka.",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 40, left: 35, bottom: 0, right: 35),
				 size: .zero
				)
			],
			
			[ //page7
				StoryLabel(
				 text: "Hormon androgen saat pubertas akan meninggi akan merangsang tumbuhnya jenggot. Tinggi rendahnya hormon ini mempengaruhi kelebatan pada rambut.",
					type: .highlight,
					targetText: ["androgen"],
				 alignment: .left,
				 padding: UIEdgeInsets(top: 80, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryImage(
				 imageDetails: ["c7_page7", "ilustrasi struktur kulit dan rambut"],
				 padding:  UIEdgeInsets(top: 40, left: 35, bottom: 0, right: 35),
                    size: .zero
				),
                StoryLabel(
                 text: "Selain itu, kondisi folikel pada kulit yang memproduksi rambut juga dapat mempengaruhi pertumbuhan rambut.",
                    type: .highlight,
                    targetText: [" "],
                 alignment: .left,
                 padding: UIEdgeInsets(top: 45, left: 35, bottom: 0, right: 35),
                 size: .zero
                )
			],
			
			[//page8
                StoryImage(
                 imageDetails: ["c7_page8", "ketiga anak laki-laki berekspresi riang"],
                 padding:  UIEdgeInsets(top: 100, left: 10, bottom: 360, right: 10),
                 size: .zero
                ),
                StoryLabel(
                 text: "Seiring berjalannya waktu, pertumbuhan rambut akan bertambah dan bagi laki-laki ini merupakan hal yang normal terjadi sehingga tidak perlu panik jika hal ini juga kamu alami, ya!",
  
                 alignment: .left,
                 padding: UIEdgeInsets(top: 35, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryLabel(
                 text: "Bagaimana denganmu?",
                 type: .bold,
                 targetText: ["Bagaimana denganmu?"],
                 alignment: .center,
                 padding: UIEdgeInsets(top: 35, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryButton(
                    title: "Paham",
                    destination: "CourseEnd",
                    padding: UIEdgeInsets(top: 20, left: 120, bottom: 0, right: 120),
                    size: CGSize(width: 0, height: 40)
                ),
			]
		]
	)
}
