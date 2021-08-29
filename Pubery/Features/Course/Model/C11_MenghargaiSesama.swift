//
//  C11_MenghargaiSesama.swift
//  Pubery
//
//  Created by Antony Susanto on 27/08/21.
//

import UIKit

struct C11_MenghargaiSesama_Data {
	static let home = CourseHome(
		id: .C11_MenghargaiSesama,
		title: "Menghargai Sesama",
		imageDetails: ["c11_icon", "Menghargai Sesama"]
	)
	
	static let detail = CourseDetail(
		category: "Sosial dan Emosi",
		title: "Menghargai Sesama",
		age: "",
		imageDetails: ["c6_cover", "Dua anak menyapa dengan mengangkat tangan"]
	)
	
	static let introduction = CourseIntroduction(
		introduction: ["Penjelasan apa itu perubahan suasana hati atau mood swings","Bagaimana mengontrol perubahan suasana hati"],
		advice: "Orang tua diharapkan aktif dalam mengajak anak berdialog selama cerita berlangsung",
		attention: "Materi ini berisi tentang pengetahuan psikologis yang mungkin lebih mudah dipahami untuk anak usia 8 tahun ke atas"
	)
	
	static let finish = CourseFinish(
		imageDetails: ["c6_finish", "Dua anak tersenyum"]
	)
	
	static let content = CourseContent(
		content: [
			[//page1
                StoryLabel(
                text: "Sore adalah waktu untuk Putra dan Putri bermain usai belajar. Mereka belajar tentang nama-nama hewan.",
                alignment: .left,
                padding: UIEdgeInsets(top: 80, left: 35, bottom: 0, right: 35),
                size: .zero
                ),
                StoryLabel(
                text: "Putra dan Putri  mengenal hewan-hewn baru dan berhasil menyebut semua hewan tersebut.",
                alignment: .left,
                padding: UIEdgeInsets(top: 10, left: 35, bottom: 90, right: 35),
                size: .zero
                ),
                StoryImage(
                imageDetails: ["c11_page1", "Meja belajar dan jam dinding"],
                padding:  UIEdgeInsets(top: 50, left: 35, bottom: 80, right: 35),
                size: .zero)
			],
			
			[//page2
				StoryImage(
				 imageDetails: ["c11_page2", "Anak perempuan sedang menggambar dan anak laki-laki memegang bolą"],
				 padding:  UIEdgeInsets(top: 50, left: 35, bottom: 260, right: 35),
				 size: .zero
				),
				StoryLabel(
				 text: "“Apa Putri mau main bola denganku?”",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryLabel(
				 text: "Namun tidak biasanya, waktu istirahat Putri ingin ia pakai untuk menggambar.“Tidak, aku memilih untuk menggambar saja”",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: .zero
				)
			],
			
			[//page3
                StoryLabel(
                text: "“Tidak biasanya kamu menggambar. Sekarang ini lebih seru main bola”",
                alignment: .left,
                padding: UIEdgeInsets(top: 80, left: 35, bottom: 0, right: 35),
                size: .zero
                ),
                StoryImage(
                 imageDetails: ["c11_page3", "Anak perempuan cemberut"],
                 padding:  UIEdgeInsets(top: 50, left: 45, bottom: 300, right: 45),
                 size: .zero
                ),
                StoryLabel(
                text: "Hal ini membuat Putri jengkel. “Menggambar juga seru",
                alignment: .left, padding: UIEdgeInsets(top: 10, left: 50, bottom: 0, right: 50),
                size: .zero
                ),
                StoryLabel(
                text: "Perselisihan Putra dan Putri ini kecil namun menjadi perselisihan besar.",
                alignment: .left, padding: UIEdgeInsets(top: 10, left: 50, bottom: 0, right: 50),
                size: .zero)
			],
			
			[//page4
				StoryImage(
				 imageDetails: ["c11_page4", "Anak perempuan sedang marah"],
				 padding:  UIEdgeInsets(top: 30, left: 35, bottom: 200, right: 60),
                    size: .zero
                ),
                StoryLabel(
                text: "Persetujuan didapat saat kedua orang setuju dengan tindakan yang akan mereka lakukan. Tandanya juga mereka nyaman dengan kehadiran satu sama lain.",
                alignment: .left,
                padding: UIEdgeInsets(top: 0, left: 35, bottom: 100, right: 35),
                size: .zero)
			],
			
			[//page5
				StoryImage(
                imageDetails: ["c11_page5", "Anak laki-laki meminta maaf sambil memberi krayon"],
                padding: UIEdgeInsets(top: 30, left: 35, bottom: 200, right: 60),
                size: .zero
                ),
                StoryLabel(
                text: "Putra mengerti kemauan Putri dan meminta maaf. Putra dan Putri pun berbaikan dan berteman kembali.",
                alignment: .left,
                padding: UIEdgeInsets(top: 0, left: 35, bottom: 100, right: 35),
                size: .zero
                ),
                StoryLabel(
                text: "“Maaf Putri nih kamu boleh pake krayonku”",
                alignment: .left,
                padding: UIEdgeInsets(top: 10, left: 35, bottom: 90, right: 35),
                size: .zero)
			],
			
			[//page6
				StoryImage(
				 imageDetails: ["c11_page6", "Anak perempuan tersenyum memegang krayon"],
				 padding:  UIEdgeInsets(top: 5, left: 50, bottom: 310, right: 40),
                    size: .zero
                 ),
                StoryLabel(
                text: "Putra meminta persetujuan Dani, dan Putri. Mereka paham meminta persetujuan dengan orang lain sebelum berinterkasi fisik itu penting.",
                alignment: .left,
                padding: UIEdgeInsets(top: 5, left: 35, bottom: 0, right: 35),
                size: .zero
                ),
                StoryLabel(
                text: "Bagaimana denganmu?",
                type: .bold,
                targetText: ["Bagaimana denganmu?"],
                alignment: .center,
                fontsize: 20,
                padding: UIEdgeInsets(top: 40, left: 50, bottom: 0, right: 50),
                size: .zero
                ),
                StoryButton(
                title: "Paham",
                destination: "CourseEnd",
                padding: UIEdgeInsets(top: 25, left: 120, bottom: 0, right: 120),
                size: CGSize(width: 0, height: 40)
				)
			]
		]
	)
}
