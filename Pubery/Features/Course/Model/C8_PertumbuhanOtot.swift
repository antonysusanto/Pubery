//
//  C8_PertumbuhanOtot.swift
//  Pubery
//
//  Created by Antony Susanto on 27/08/21.
//

import UIKit

struct C8_PertumbuhanOtot_Data {
	static let home = CourseHome(
		id: .C8_PertumbuhanOtot,
		title: "Pertumbuhan Otot",
		imageDetails: ["c8_icon", "Pertumbuhan Otot"]
	)
	
	static let detail = CourseDetail(
		category: "Fisik",
		title: "Pertumbuhan Otot",
		age: "Disarankan untuk anak usia 8 tahun ke atas",
		imageDetails: ["c8_cover", "Dua anak menyapa dengan mengangkat tangan"]
	)
	
	static let introduction = CourseIntroduction(
		introduction: ["Penjelasan tentang pertumbuhan otot dan tulang","Memulai untuk berolahraga untuk menjaga kesehatan & pertumbuhan"],
		advice: "Orang tua diharapkan aktif dalam mengajak anak berdialog selama cerita berlangsung",
		attention: "Materi ini berisi tentang pengetahuan fisik yang mungkin lebih mudah dipahami untuk anak usia 8 tahun ke atas"
	)
	
	static let finish = CourseFinish(
		imageDetails: ["c8_congrats", "Anak laki-laki mengangkat dua jempol"]
	)
	
	static let content = CourseContent(
		content: [
			[//page1
				StoryImage(
				 imageDetails: ["c8_page1", "Anak laki-laki dan Ayah sedang menonton televisi"],
				 padding:  UIEdgeInsets(top: 50, left: 45, bottom: 200, right: 45),
				 size: .zero
				),
				StoryLabel(
				 text: "Suatu pagi, Putra dan Ayah sedang menonton pertandingan angkat beban di TV.",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 10, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				
			],
			
			[//page2
                StoryImage(
                 imageDetails: ["c8_page2", "Ayah menasihati anak laki-laki"],
                 padding:  UIEdgeInsets(top: 50, left: 40, bottom: 250, right: 40),
                 size: .zero
                ),
                StoryLabel(
                 text: "Putra pun bertanya pada Ayah, “Ayah, lengan mereka kenapa besar ya? Lenganku kok kecil?”",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryLabel(
                 text: "Ayah pun tertawa.",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
				
			],
			
			[//page3
                StoryImage(
                 imageDetails: ["c8_page3", "Anak laki-laki mengangkat lengan menunjukkan ototnya"],
                 padding:  UIEdgeInsets(top: 50, left: 40, bottom: 250, right: 40),
                 size: .zero
                ),
                StoryLabel(
                 text: "Ayah menjawab Putra, “Lenganmu lama kelamaan akan membesar kok Putra, yang membesar dinamakan massa otot, itu yang menandakan kamu bertumbuh diiringi dengan pertumbuhan tinggimu”.",
                    type: .highlight,
                    targetText: ["menandakan kamu bertumbuh diiringi dengan pertumbuhan tinggimu"],
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
               
			],
			
			[//page4
                StoryLabel(
                text: "“Kamu masih berada di dalam masa pertumbuhan, di mana tulang dan ototmu masih mengalami banyak proses untuk bertumbuh dan berkembang.",
                alignment: .left,
                padding: UIEdgeInsets(top:80, left: 35, bottom: 0, right: 35),
                size: .zero),
            
                StoryLabel(
                text: "Ototmu akan bertambah besar sehingga postur tubuhmu juga semakin besar.”",
                alignment: .left,
                padding: UIEdgeInsets(top: 10, left: 35, bottom: 40, right: 35),
                size: .zero),
            
                StoryImage(
                imageDetails: ["c8_page4", "Pertumbuhan badan anak laki-laki"],
                padding: UIEdgeInsets(top: 70, left: 30, bottom: 60, right: 30),
                size: .zero)
                
                
			],
			
			[//page5
                StoryImage(
                 imageDetails: ["c8_page5", "Lengan manusia yang memiliki otot"],
                 padding:  UIEdgeInsets(top: 50, left: 40, bottom: 250, right: 40),
                 size: .zero
                ),
                StoryLabel(
                 text: "Putra mengerti lalu bertanya “Apa nanti aku akan sebesar atlit itu, Ayah?”",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryLabel(
                 text: "“Tidak, Putra. Atlit tersebut melakukan latihan khusus atlit agar dia bisa berkompetisi.”",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
			],
			
			[//page6
                StoryImage(
                 imageDetails: ["c8_page6", "Ayah menasihati anak laki-laki"],
                 padding:  UIEdgeInsets(top: 50, left: 40, bottom: 250, right: 40),
                 size: .zero
                ),
                StoryLabel(
                 text: "“Kamu bisa mulai berolahraga untuk mendukung pertumbuhan otot dan tulangmu. Olahraga seperti lari, sepeda, berenang, futsal, dan lain - lain.”",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 10, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryLabel(
                 text: "“Dengan begitu, kamu secara alami akan membangun otot dan tulang yang kuat.”, Ujar Ayah.",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
			],
			
			[ //page7
                StoryImage(
                 imageDetails: ["c8_page7", "Anak laki-laki dan dua barbel di sekelilingnya"],
                 padding:  UIEdgeInsets(top: 50, left: 30, bottom: 250, right: 30),
                 size: .zero
                ),
                StoryLabel(
                 text: "Yuk kita mulai dengan olahraga ringan seperti pemanasan!",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
				 StoryButton(
					 title: "Mulai",
					 destination: "Stretching",
					 padding: UIEdgeInsets(top: 50, left: 120, bottom: 0, right: 120),
					 size: CGSize(width: 0, height: 40)
				 )
			],
			
			[//page8
                StoryImage(
                 imageDetails: ["c8_page8", "Anak laki-laki mengangkat jempol"],
                 padding:  UIEdgeInsets(top: 50, left: 10, bottom: 370, right: 10),
                 size: .zero
                ),
                StoryLabel(
                 text: "“Jadi kamu bisa mulai olahraga untuk pertumbuhan ototmu dan juga untuk menjaga kesehatan.” Ujar Ayah.",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryLabel(
                 text: "Putra pun merasa senang dan siap untuk berolahraga.",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
               
                StoryLabel(
                     text: "Bagaimana denganmu?",
                    type: .bold,
                    targetText: ["Bagaimana denganmu?"],
                    alignment: .center,
                     padding: UIEdgeInsets(top: 40, left: 35, bottom: 0, right: 35),
                     size: .zero
                 ),
                 StoryButton(
                     title: "Paham",
                     destination: "CourseEnd",
                     padding: UIEdgeInsets(top: 10, left: 120, bottom: 0, right: 120),
                     size: CGSize(width: 0, height: 40)
                 ),
			]
		]
	)
}
