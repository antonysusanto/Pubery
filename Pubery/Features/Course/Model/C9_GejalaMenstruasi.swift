//
//  C9_GejalaMenstruasi.swift
//  Pubery
//
//  Created by Antony Susanto on 27/08/21.
//

import UIKit

struct C9_GejalaMenstruasi_Data {
	static let home = CourseHome(
		id: .C9_GejalaMenstruasi,
		title: "Gejala Menstruasi",
		imageDetails: ["c9_icon", "Gejala Menstruasi"]
	)
	
	static let detail = CourseDetail(
		category: "Fisik dan Reproduksi",
		title: "Gejala Menstruasi",
		age: "",
		imageDetails: ["c9_cover", "Anak perempuan menunjuk keatas dengan tiga jari"]
	)
	
	static let introduction = CourseIntroduction(
		introduction: ["Penjelasan tentang macam-macam gejala menstruasi","Solusi meredakan gejala menstruasi"],
		advice: "Orang tua diharapkan aktif dalam mengajak anak berdialog selama cerita berlangsung",
		attention: " "
	)
	
	static let finish = CourseFinish(
		imageDetails: ["c9_finish", "Anak perempuan tersenyum"]
	)
	
	static let content = CourseContent(
		content: [
			[//page1
				StoryLabel(
				 text: "Bu, mengapa temanku di sekolah tidak merasakan sakit perut sepertiku ketika akan menstruasi?",
				 alignment: .center,
				 padding: UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryImage(
				 imageDetails: ["c9_1", "Anak perempuan sedang bertanya pada ibunya"],
					padding:  UIEdgeInsets(top: 55, left: 10, bottom: 50, right: 10),
				 size: .zero
				)
			],
			
			[//page2
				
				StoryLabel(
				 text: "Gejala yang dirasakan perempuan ketika mendekati dinamakan Premenstrual Syndrome (PMS). PMS ini berbeda-beda untuk setiap orang.",
					type: .highlight,
					targetText: ["Premenstrual Syndrome (PMS)"],
				 alignment: .left,
				 padding: UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryImage(
				 imageDetails: ["c9_2", "Anak perempuan dikelilingi gejala-gejala menstruasi"],
				 padding:  UIEdgeInsets(top: 50, left: 35, bottom: 260, right: 35),
				 size: .zero
				),
				StoryLabel(
				 text: "Bahkan ada juga yang tidak mengalaminya sama sekali.",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryLabel(
				 text: "Apa saja tanda-tanda PMS?",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: .zero
				)
			],
			
			
			[//page4
				StoryLabel(
				 text: "Kram Perut",
				 alignment: .left,
					fontsize: 25,
				 padding: UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryLabel(
				 text: "Sakit pada perut bagian bawah yang muncul sebelum dan di hari awal haid.",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryImage(
				 imageDetails: ["c9_3", "Anak perempuan memegang perutnya yang sakit"],
				 padding:  UIEdgeInsets(top: 40, left: 35, bottom: 0, right: 35),
				 size: CGSize(width: 0, height: 250)
				),
				StoryLabel(
				 text: "Memeluk sebotol air hangat di perut dapat membantu meredakan rasa sakit.",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryLabel(
				 text: "Selain itu, perbanyak minum air putih dan istirahat yang cukup.",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: .zero
				)
				
			],
			
			[//page5
				StoryLabel(
				 text: "Jerawat",
				 alignment: .left,
					fontsize: 25,
				 padding: UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryLabel(
				 text: "Menjelang menstruasi, beberapa perempuan akan memiliki jerawat akibat perubahan hormon.",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryImage(
				 imageDetails: ["c9_4", "Anak perempuan memperhatikan jerawat di wajahnya di depan kaca"],
				 padding:  UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: CGSize(width: 0, height: 250)
				),
				StoryLabel(
				 text: "Perbanyak minum air putih, konsumsi makanan sehat, serta mencuci wajah 2x sehari akan membantu meredakan jerawat.",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: .zero
				)
			],
			
			[//page6
				StoryLabel(
				 text: "Nyeri Payudara",
				 alignment: .left,
					fontsize: 25,
				 padding: UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryLabel(
				 text: "Payudara akan terasa sakit, bengkak atau tak nyaman pada beberapa hari sebelum haid sampai saat awal menstruasi.",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryImage(
				 imageDetails: ["c9_5", "Anak perempuan memegang dadanya yang nyeri"],
				 padding:  UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: CGSize(width: 0, height: 250)
				),
				StoryLabel(
				 text: "Gunakan bra dan pakaian yang longgar agar tidak terlalu nyeri.",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryLabel(
				 text: "Namun jika terjadi benjolan atau nyeri  yang mengganggu tidur dan aktivitas sehari-hari, lebih baik periksa ke dokter.",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: .zero
				)
			],
			
			[ //page7
				StoryLabel(
				 text: "Sakit Kepala",
				 alignment: .left,
					fontsize: 25,
				 padding: UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryLabel(
				 text: "Kepala akan terasa sakit sebelum hingga berakhir menstruasi karena perubahan hormon dan banyaknya darah yang keluar selama menstruasi.",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryImage(
				 imageDetails: ["c9_6", "Anak perempuan memegang kepalanya yang sakit"],
				 padding:  UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: CGSize(width: 0, height: 250)
				),
				StoryLabel(
				 text: "Mengompres dingin area kepala yang sakit dapat membantu meredakan rasa sakitnya.",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 5, left: 35, bottom: 0, right: 35),
				 size: .zero
				)
				
			],
			
			[ //page8
				StoryLabel(
				 text: "Perubahan Emosi",
				 alignment: .left,
					fontsize: 25,
				 padding: UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryLabel(
				 text: "Kamu mungkin akan mudah tersinggung dan merasa kesal menjelang menstruasi. Atau mungkin juga sering menangis dan merasa cemas.",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 5, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryImage(
				 imageDetails: ["c9_7", "Anak perempuan memegang kepalanya yang sakit"],
				 padding:  UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: CGSize(width: 0, height: 250)
				),
				StoryLabel(
				 text: "Olahraga dan tidur dapat membantu menghilangkannya. ",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				
				StoryLabel(
				 text: "Namun jika kamu merasa sedih, putus asa, atau kekurangan energi selama dua minggu lebih, sebaiknya segera bicara dengan dokter.",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: .zero
				)
			],
			
			[ //page7
				StoryLabel(
				 text: "Semua itu adalah beberapa PMS yang biasanya dirasakan oleh para perempuan.",
					type: .highlight,
				 alignment: .left,
				 padding: UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryLabel(
				 text: "Kamu masih ingat apa saja gejala dan solusi masing-masing? Yuk coba bantu Putri meredakan gejalanya!",
					type: .highlight,
				 alignment: .left,
				 padding: UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryImage(
				 imageDetails: ["c9_8", ""],
				 padding:  UIEdgeInsets(top: 40, left: 35, bottom: 0, right: 35),
				 size: CGSize(width: 0, height: 250)
				),
				 StoryButton(
					 title: "Pasang",
					 destination: "PMS",
					 padding: UIEdgeInsets(top: 30, left: 120, bottom: 0, right: 120),
					 size: CGSize(width: 0, height: 40)
				 )
			],
			
			[//page6
				StoryLabel(
				 text: "Dan masih banyak lagi bentuk PMS yang memang normal terjadi pada  5 - 14 hari sebelum hingga pada awal menstruasi. Jadi kamu tidak perlu khawatir.",
					type: .highlight,
					targetText: ["normal"],
				 alignment: .left,
				 padding: UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryImage(
				 imageDetails: ["c9_9", "Ibu menunjukkan kalendar menstruasi"],
				 padding:  UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: CGSize(width: 0, height: 260)
				),
				StoryLabel(
				 text: "Apa sekarang kamu sudah paham?",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 40, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				
				StoryButton(
					title: "Paham",
					destination: "CourseEnd",
					padding: UIEdgeInsets(top: 20, left: 120, bottom: 0, right: 120),
					size: CGSize(width: 0, height: 40)
				)
			]
		]
	)
}
