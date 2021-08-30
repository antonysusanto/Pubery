//
//  C10_PersetujuanDanInteraksiFisik.swift
//  Pubery
//
//  Created by Antony Susanto on 27/08/21.
//

import UIKit

struct C10_PersetujuanDanInteraksiFisik_Data {
	static let home = CourseHome(
		id: .C10_PersetujuanDanInteraksiFisik,
		title: "Persetujuan dan Interaksi Fisik",
		imageDetails: ["c10_icon", "Persetujuan dan Interaksi Fisik"]
	)
	
	static let detail = CourseDetail(
		category: "Sosial dan Emosi",
		title: "Persetujuan dan Interaksi Fisik",
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
				StoryImage(
                imageDetails: ["c10_page1", "Anak laki-laki ber main bola"],
                padding:  UIEdgeInsets(top: 80, left: 35, bottom: 230, right: 35),
                size: .zero
                ),
                StoryLabel(
                text: "Putra sedang dalam tanding bola.",
                alignment: .left,
                padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                size: .zero
                ),
                StoryLabel(
                text: "Pertandingan yang sengit antar Grup Merah dan Grup Biru. Sampai akhirnya Grup merah menang!",
                alignment: .left,
                padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                    size: .zero)
			],
			
			[//page2
                StoryLabel(
                text: "Permainan yang adil dan semua orang saling mengucapkan selamat dengan saling berjabat tangan.",
                alignment: .left,
                padding: UIEdgeInsets(top: 80, left: 35, bottom: 0, right: 35),
                size: .zero
                ),
                StoryImage(
                imageDetails: ["c10_page2", "Dua anak laki-laki berjabat tangan"],
                padding:  UIEdgeInsets(top: 10, left: 80, bottom: 80, right: 95),
                size: .zero
                ),
                StoryLabel(
                text: "“Pertandingan tadi seru sekali!” Ucap Putra sambil menjulurkan tangan untuk meminta izin berjabat tangan.",
                alignment: .left, padding: UIEdgeInsets(top: 20, left: 50, bottom: 0, right: 50),
                size: .zero
				),
                StoryLabel(
                text: "“Kamu juga jago bermain bolanya!” Dani menjawab.“",
                alignment: .left, padding: UIEdgeInsets(top: 20, left: 50, bottom: 0, right: 50),
                size: .zero)
			],
			
			[//page3
				StoryImage(
				 imageDetails: ["c10_page3", "Tiga anak tos bersama"],
				 padding:  UIEdgeInsets(top: 80, left: 35, bottom: 230, right: 35),
				 size: .zero
				),
                StoryLabel(
                text: "Putri bergabung dan merayakan dengan tos bareng. “Kalian semua keren, ayo kita tos” Ucap Putri.",
                alignment: .left,
                padding: UIEdgeInsets(top: 10, left: 35, bottom: 0, right: 35),
                size: .zero),
                
                StoryLabel(
                text: "Beberapa sikap yang sudah ditunjukkan tadi disebut persetujuan.",
                type: .highlight,
                targetText: ["persetujuan."],
                alignment: .left,
                padding: UIEdgeInsets(top: 20, left: 35, bottom: 70, right: 35),
                size: .zero)
			],
			
			
			[//page4
				StoryLabel(
                text: "Dalam situasi lain, orang dewasa pun harus meminta persetujuan kepadamu sebelum berinterkasi denganmu.",
                alignment: .left,
                padding: UIEdgeInsets(top: 80, left: 35, bottom: 0, right: 35),
                size: .zero
                ),
                StoryImage(
                imageDetails: ["c10_page4", "Orang dewasa mencoba memeluk anak dan anak menolak"],
                padding:  UIEdgeInsets(top: 40, left: 10, bottom: 0, right: 10),
                size: CGSize(width: 0, height: 280)
                ),
                StoryLabel(
                text: "Kamu bisa menolak jika merasa dengan ucapan yang mudah dimengerti agar tidak menyakiti perasaan orang lain.",
                alignment: .left, padding: UIEdgeInsets(top: 20, left: 50, bottom: 0, right: 50),
                size: .zero)
			],
			
			[//page5
				StoryImage(
                imageDetails: ["c10_page5", "Tubuh anak-laki-laki"],
                padding:  UIEdgeInsets(top: 50, left: 80, bottom: 200, right: 80),
                size: .zero
                ),
                StoryLabel(
                text: "Kamu yang berhak dan satu-satunya yang dapat memutuskan persetujuan untuk interaksi fisik dari orang lain.",
                alignment: .left,
                padding: UIEdgeInsets(top: 35, left: 35, bottom: 0, right: 35),
                size: .zero)
			],
			
			[ //page6
				StoryImage(
				 imageDetails: ["c10_page6", "Teks percakapan antara dua orang"],
				 padding:  UIEdgeInsets(top: 80, left: 35, bottom: 230, right: 35),
                    size: .zero
				),
                StoryLabel(
                text: "Persetujuan didapat saat kedua orang setuju dengan tindakan yang akan mereka lakukan. Tandanya juga mereka nyaman dengan kehadiran satu sama lain.",
                alignment: .left,
                padding: UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
                size: .zero)
			],
			
			[//page7
				StoryImage(
                imageDetails: ["c10_page7", "Anak-anak sedang berfoto bersama"],
                padding:  UIEdgeInsets(top: 5, left: 80, bottom: 300, right: 80),
                size: .zero
                ),
                StoryLabel(
                text: "Putra meminta persetujuan Dani, dan Putri. Mereka paham meminta persetujuan dengan orang lain sebelum berinterkasi fisik itu penting.",
                alignment: .left,
                padding: UIEdgeInsets(top: 5, left: 35, bottom: 0, right: 35),
                size: .zero),
                    
                StoryLabel(
                text: "Bagaimana denganmu?",
                type: .bold,
                targetText: ["Bagaimana denganmu?"],
                alignment: .center,
                fontsize: 20,
                padding: UIEdgeInsets(top: 40, left: 50, bottom: 0, right: 50),
                size: .zero),
                    
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
