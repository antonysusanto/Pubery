//
//  C4_JakunDanFungsinya_Data.swift
//  Pubery
//
//  Created by Antony Susanto on 03/08/21.
//

import UIKit

struct C4_JakunDanFungsinya_Data {
	static let home = CourseHome(
		id: .C4_JakunDanFungsinya,
		title: "Jakun dan Fungsinya",
		imageDetails: ["c4_icon", "Jakun dan Fungsinya"]
	)
	
	static let detail = CourseDetail(
		category: "Fisik",
		title: "Jakun dan Fungsinya",
		age: "Disarankan untuk anak usia 8 tahun ke atas",
		imageDetails: ["c4_cover", "Anak laki-laki menunjuk ke judul materi"]
	)
	
	static let introduction = CourseIntroduction(
		introduction: ["Pertama kali ada tonjolan di leher","Penjelasan fungsi-fungsi jakun","Perbedaan antara jakun laki-laki dan perempuan"],
		advice: "Orang tua diharapkan aktif dalam mengajak anak berdialog selama cerita berlangsung",
		attention: "Materi ini mengandung ilustrasi ringan terkait darah, disarankan untuk anak usia 8 tahun ke atas"
	)
	
	static let finish = CourseFinish(
		imageDetails: ["c4_finish", "Anak laki-laki mengangkat dua jempol"]
	)
	
	static let content = CourseContent(
		content: [
			[//page1
				StoryImage(
				 imageDetails: ["c4_page1", "Anak laki-laki terlihat bingung sambil memegang lehernya"],
				 padding:  UIEdgeInsets(top: 50, left: 10, bottom: 300, right: 10),
				 size: .zero
				),
				StoryLabel(
				 text: "Pagi hari, Putra bersiap akan pergi ke Sekolah. ",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryLabel(
				 text: "Sambil menunggu bis sekolah datang, Putra secara tidak sengaja meraba bagian leher dan menemukan sedikit benjolan.",
                    type: .highlight,
                    targetText: ["sedikit benjolan"],
				 alignment: .left,
				 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
                StoryLabel(
                 text: "Dia pun heran karena tidak biasanya ada yang menonjol pada area tersebut. \nPutra merasa malu untuk pergi sekolah.",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                )
			],
            
            [//page2
                StoryImage(
                 imageDetails: ["c4_page2", "Ibu berbicara ke anak laki-laki yang sedang kebingungan"],
                 padding:  UIEdgeInsets(top: 50, left: 35, bottom: 300, right: 35),
                 size: .zero
                ),
                StoryLabel(
                 text: "Putra pun bertanya kepada Ibu tentang tonjolan tersebut.",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryLabel(
                 text: "“Oh Putra, tonjolan itu namanya Jakun. Biasanya laki-laki yang mempunyai itu.”",
                    type: .highlight,
                    targetText: ["Jakun"],
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryLabel(
                 text: "Putra pun heran.",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                )
            ],
            
            [ //page3
                 StoryImage(
                     imageDetails: ["c4_page3", "Tanda tanya"],
                     padding:  UIEdgeInsets(top: 150, left: 35, bottom: 300, right: 35),
                     size: .zero
                 ),
                StoryLabel(
                    text: "Kamu tau tidak kenapa hanya laki-laki yang mempunyai jakun yang sampai menonjol?",
                    type: .bold,
                    targetText: ["Kamu tau tidak kenapa hanya laki-laki yang mempunyai jakun yang sampai menonjol?"],
                    alignment: .center,
                    fontsize: 25,
                    padding: UIEdgeInsets(top: 0, left: 35, bottom: 0, right: 35),
                    size: .zero
                ),
            ],
            
            [ //page4
                StoryLabel(
                     text: "Jakun merupakan tulang rawan yang terletak di atas kelenjar tiroid.",
                    type: .highlight,
                    targetText: ["kelenjar tiroid"],
                    alignment: .left,
                     padding: UIEdgeInsets(top: 30, left: 35, bottom: 0, right: 35),
                     size: .zero
                 ),
                 StoryImage(
                     imageDetails: ["c4_page4", "Bentuk jakun pada leher laki-laki"],
                     padding:  UIEdgeInsets(top: 20, left: 10, bottom: 100, right: 10),
                     size: CGSize(width: 0, height: 300)
                 ),
    
            ],
            
            [ //page5
                 StoryImage(
                     imageDetails: ["c4_page5", "Ilustrasi bagian-bagian pada jakun yang melindungi pita suara"],
                     padding:  UIEdgeInsets(top: 20, left: 35, bottom: 350, right: 35),
                     size: .zero
                 ),
                
                StoryLabel(
                 text: "Fungsi jakun itu adalah untuk melindungi laring dan pita suara.",
                    type: .highlight,
                    targetText: ["melindungi laring dan pita suara."],
                 alignment: .left,
                 padding: UIEdgeInsets(top: 10, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                
                StoryLabel(
                 text: "Dilindungi karena adanya tekanan yang berasal dari luar tenggorkan yang bisa merusak bagian-bagian sensitif yang berada di dalam tenggorokan.",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                
                StoryLabel(
                 text: "Nah, cenderung suara laki-laki akan lebih besar dan berat, jadi pita suara laki-laki akan lebih besar.",
                    type: .highlight,
                    targetText: ["besar dan berat"],
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                
                StoryLabel(
                 text: "Maka dari itu, jakun yang melindungi juga akan lebih besar dari perempuan.",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
            ],
            
            [ //page6
                
                StoryImage(
                    imageDetails: ["c4_page6", "Perbedaan jakun perempuan yang tidak terlihat dan jakun laki-laki yang menonjol dan terlihat"],
                    padding:  UIEdgeInsets(top: 70, left: 10, bottom: 200, right: 10),
                    size: .zero
                ),
                 StoryLabel(
                     text: "Untuk anak perempuan, laring juga tumbuh tapi tidak sebesar laki-laki. Itu sebabnya anak perempuan tidak memiliki jakun yang terlihat menonjol.",
                    type: .bold,
                    targetText: ["ditekan-tekan."],
                    alignment: .left,
                     padding: UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
                     size: .zero
                 ),
    
            ],
            
            [//page7
                StoryImage(
                 imageDetails: ["c4_page7", "Anak laki-laki mengangkat jempol"],
                 padding:  UIEdgeInsets(top: 50, left: 10, bottom: 350, right: 10),
                 size: .zero
                ),
                StoryLabel(
                 text: "“Jadi kamu jangan merasa malu. Karena hal ini juga terjadi ke semua laki-laki. Itu menandakan bahwa kamu sudah bertumbuh.” Ujar Ibu.",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryLabel(
                 text: "Putra merasa lega dan siap untuk berangkat ke sekolah. Putra sekarang paham tentang jakun yang ada di lehernya.",
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
                     padding: UIEdgeInsets(top: 40, left: 120, bottom: 0, right: 120),
                     size: CGSize(width: 0, height: 40)
                 ),
            ],
            
		]
	)
}
