//
//  C2_TentangMenstruasi_Data.swift
//  Pubery
//
//  Created by Antony Susanto on 03/08/21.
//

import UIKit

struct C2_TentangMenstruasi_Data {
	
	static let home = CourseHome(
		id: .C2_TentangMenstruasi,
		title: "Tentang Menstruasi",
		imageDetails: ["c2_icon", "Tentang Menstruasi"]
	)
	
	static let detail = CourseDetail(
		category: "Fisik dan Reproduksi",
		title: "Tentang Menstruasi",
		age: "Disarankan untuk anak usia 8 tahun ke atas",
		imageDetails: ["c2_cover", "Anak perempuan menunjuk keatas dengan dua jari"]
	)
	
	static let introduction = CourseIntroduction(
		introduction: ["Penjelasan tentang menstruasi", "Proses terjadinya menstruasi", "Penjelasan organ-organ reproduksi perempuan"],
		advice: "Orang tua diharapkan aktif dalam mengajak anak berdialog selama cerita berlangsung",
		attention: "Materi ini mengandung ilustrasi organ reproduksi di dalam tubuh, disarankan untuk anak usia 11 tahun ke atas"
	)
	
	static let finish = CourseFinish(
		imageDetails: ["c2_finish", "Anak perempuan mengangkat dua jempol"]
	)
	
	static let content = CourseContent(
		content: [
			[//page1
                StoryLabel(
                text: "“Kamu pernah dengar apa itu menstruasi?”",
                type: .bold,
                targetText: ["“Kamu pernah dengar apa itu menstruasi?”"],
                alignment: .center,
                fontsize: 24,
                padding: UIEdgeInsets(top: 80, left: 35, bottom: 0, right: 35),
                size: .zero),
                
                StoryImage(
                imageDetails: ["c2_page1", "Ibu dan anak perempuan sedang berbicara"],
                padding:  UIEdgeInsets(top: 55, left: 10, bottom: 50, right: 10),
                size: .zero)
            ],
            
            [//page2
                StoryLabel(
                text: "Menstruasi itu...",
                type: .bold,
                targetText: ["Menstruasi itu..."],
                alignment: .left, fontsize: 24,
                padding: UIEdgeInsets(top: 80, left: 35, bottom: 0, right: 35),
                size: .zero),
                
                StoryImage(
                imageDetails: ["c2_page2", "Anak perempuan"],
                padding: UIEdgeInsets(top: 30, left: 50, bottom: 0, right: 50),
                size: CGSize(width: 0, height: 320)),
                
                StoryLabel(
                text: "Proses keluarnya darah dari Vagina yang terjadi setiap bulan.",
                alignment: .center,
                padding: UIEdgeInsets(top: 30, left: 50, bottom: 0, right: 50),
                size: .zero),
                
                StoryLabel(
                text: "“Kok bisa ya?”\n”Kenapa terjadi setiap bulan?”",
                alignment: .center,
                padding: UIEdgeInsets(top: 15, left: 50, bottom: 0, right: 50),
                size: .zero)
                ],
            
            [//page3
                StoryLabel(
                text: "“Gimana sih proses terjadinya menstruasi itu?“",
                type: .bold,
                targetText: ["“Gimana sih proses terjadinya menstruasi itu?“"],
                alignment: .center,
                fontsize: 24,
                padding: UIEdgeInsets(top: 80, left: 35, bottom: 0, right: 35),
                size: .zero),
                
                StoryImage(
                imageDetails: ["c2_page3", "Ibu memegang gambar ovarium"],
                padding: UIEdgeInsets(top: 40, left: 50, bottom: 0, right: 50),
                size: CGSize(width: 0, height: 225)),
                
                StoryLabel(
                text: "Perempuan itu punya organ reproduksi yang tiap bulannya memasuki masa subur yaitu untuk mempersiapkan seorang ibu untuk masa kehamilan. Ada beberapa bagian yang harus kamu tahu nih!",
                alignment: .left, padding: UIEdgeInsets(top: 50, left: 50, bottom: 0, right: 50),
                size: .zero),
              ],
            
                
			[ //page4
				StoryTappableImage(
					texts: ["Yuk kita belajar tentang organ reproduksi perempuan...\n\nTekan gambar di bawah ini",
							"Ovarium\n\nOrgan yang memproduksi sel telur",
							"Sel telur\n\nDilepas melalui saluran menuju dinding rahim",
							"Dinding Rahim\n\nAkan menebal jika ada sel telur",
							"Darah akan keluar melalui vagina / kemaluan"
					],
					imageNames: ["c2_page4","m2_ovarium","m2_sel_telur","m2_dinding_rahim","m2_vagina"],
					padding: UIEdgeInsets(top: 70, left: 30, bottom: 0, right: 30),
					size: .zero
				)
			],
            
            [//page5
                StoryImage(
                imageDetails: ["c2_page5", "Kalendar dengan satu tanggal warna merah"],
                padding: UIEdgeInsets(top: 60, left: 120, bottom: 350, right: 120),
                size: .zero),
                
                StoryLabel(
                text: "Setiap bulan, ovarium akan melepas sel telur. Sel telur yang dilepas oleh ovarium nanti akan lewat saluran yang bernama tuba falopi menuju dinding rahim.",
                type: .highlight,
                targetText: ["ovarium","tuba falopi","dinding rahim"],
                alignment: .left,
                padding: UIEdgeInsets(top: 0, left: 50, bottom: 0, right: 50),
                size: .zero),

                StoryLabel(
                text: "Secara berkala, bila sel telur tidak dibuahi, maka dinding rahim yang sebelumnya sudah menebal karena proses pelepasan sel telur ini akan gugur dan keluar sebagai darah.",
                alignment: .left,
                padding: UIEdgeInsets(top: 20, left: 50, bottom: 0, right: 50),
                size: .zero)
                ],
                
            [//page6]
                StoryImage(
                imageDetails: ["c2_page6", "Anak perempuan tersenyum"],
                padding: UIEdgeInsets(top: 60, left: 120, bottom: 360, right: 120),
                size: .zero),
                
                StoryLabel(
                text: "Jadi, sekarang Putri sudah paham bahwa apa yang sebenarnya terjadi pada tubuhnya ketika dia menstruasi. Putri juga paham bahwa menstruasi adalah hal  normal yang akan terjadi pada dirinya setiap bulan mulai dari sekarang.",
                alignment: .left,
                padding: UIEdgeInsets(top: 10, left: 50, bottom: 0, right: 50),
                size: .zero),
                
                StoryLabel(
                text: "Bagaimana denganmu?",
                type: .bold,
                targetText: ["Bagaimana denganmu?"],
                alignment: .center,
                fontsize: 20,
                padding: UIEdgeInsets(top: 50, left: 50, bottom: 0, right: 50),
                size: .zero),
                
                StoryButton(
                title: "Paham",
                destination: "CourseEnd",
                padding: UIEdgeInsets(top: 25, left: 120, bottom: 0, right: 120),
                size: CGSize(width: 0, height: 40)),
                ],
            ]
        )
    }
