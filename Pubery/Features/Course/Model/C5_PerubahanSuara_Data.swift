//
//  C5_PerubahanSuara_Data.swift
//  Pubery
//
//  Created by Antony Susanto on 03/08/21.
//

import UIKit

struct C5_PerubahanSuara_Data {
	static let home = CourseHome(
		id: .C5_PerubahanSuara,
		title: "Perubahan Suara",
		imageDetails: ["c5_icon", "Perubahan Suara"]
	)
	
	static let detail = CourseDetail(
		category: "Fisik",
		title: "Perubahan Suara",
		age: "Disarankan untuk anak usia 8 tahun ke atas",
		imageDetails: ["c5_cover", "Karakter Pubery putra menunjuk ke judul materi"]
	)
	
	static let introduction = CourseIntroduction(
		introduction: ["Penjelasan tentang perubahan suara yang dialami anak laki-laki pada saat pubertas","Mengapa perubahan suara dapat terjadi"],
		advice: "Orang tua diharapkan aktif dalam mengajak anak berdialog selama cerita berlangsung"
        ,
		attention: " "
	)
	
	static let finish = CourseFinish(
		imageDetails: ["c5_finish", "Anak laki-laki mengangkat dua jempol"]
	)
	
	static let content = CourseContent(
		content: [
			[//page1
				StoryImage(
				 imageDetails: ["c5_page1", "Anak laki-laki bernyanyi sambil memainkan gitar"],
				 padding:  UIEdgeInsets(top: 50, left: 10, bottom: 300, right: 10),
				 size: .zero
				),
				StoryLabel(
				 text: "Putra merupakan anak yang gemar bermain gitar dan juga bernyanyi. Pada suatu hari Putra mengikuti penilaian kelas seni di sekolahnya. Ia membawakan lagu favoritnya untuk tampil di depan teman-teman dan juga gurunya.",
				 type: .bold,
				 targetText: [""],
				 alignment: .left,
				 padding: UIEdgeInsets(top: 40, left: 35, bottom: 0, right: 35),
				 size: .zero
				)
            ],
            
            [//page2
                StoryImage(
                 imageDetails: ["c5_page2", "Anak laki-laki heran akan perubahan suara yang dialaminya"],
                 padding:  UIEdgeInsets(top: 50, left: 10, bottom: 300, right: 10),
                 size: .zero
                ),
                StoryLabel(
                 text: "Dengan percaya diri Putra membawakan lagu favoritnya. Namun ketika alunan lagu sedang berada pada nada yang cukup tinggi, Putra sedikit kesulitan untuk mengatur vokalnya.  Ia merasa suaranya lebih berat.",
                 type: .bold,
                 targetText: ["sakit perut", "tidak"],
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryLabel(
                 text: "Putra menahan malu akibat kejadian tersebut. ???suara ku kenapa jadi begini???? gumamnya dalam hati.",
                 type: .bold,
                 targetText: ["sakit perut", "menghilang"],
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                )
            ],
            
            [//page3 REVISI GAMBAR NAIKIN, PARAGRAF 2 NAIKIN
                StoryLabel(
                 text: "Pak guru menganggukkan kepala seraya membalas pertanyaan Putra, ???mungkin kamu sedang ada di fase pubertas Put, sehingga suara kamu berubah menjadi berat???",
                 type: .bold,
                 targetText: ["sakit perut", "tidak"],
                 alignment: .left,
                 padding: UIEdgeInsets(top: 80, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                
                StoryImage(
                 imageDetails: ["c5_page3", "Pak guru bertanya pada anak laki-laki"],
                 padding:  UIEdgeInsets(top: 40, left: 10, bottom: 0, right: 10),
                 size: CGSize(width: 0, height: 200)
                ),
             
                StoryLabel(
                 text: "???Saya merasakan adanya perubahan pada suara saya pak, sehingga saya kurang bisa menyesuaikan suara saya dengan lagunya???, timpal Putra.",
                 type: .highlight,
                 targetText: [""],
                 alignment: .left,
                 padding: UIEdgeInsets(top: 40, left: 35, bottom: 0, right: 35),
                 size: .zero
                )
            ],
            
            [//page4
                StoryImage(
                 imageDetails: ["c5_page4", "Pak guru menjelaskan lebih detail terkait perubahan yang dialami anak laki-laki"],
                 padding:  UIEdgeInsets(top: 50, left: 10, bottom: 300, right: 10),
                 size: .zero
                ),
                StoryLabel(
                 text: "Pak Guru menyadari adanya ketidak-nyamanan yang diekspresikan oleh Putra. Lantas pak Guru pun bertanya, ???Putra, apa yang sedang terjadi? apakah kamu baik-baik saja????. ",
                 type: .bold,
                 targetText: ["sakit perut", "tidak"],
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryLabel(
                 text: "Walau Putra diberi penjelasan oleh pak Guru, Putra tetap saja masih bingung dengan perubahan yang dialaminya.",
                 type: .bold,
                 targetText: ["sakit perut", "menghilang"],
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                )
            ],
            
            [//page5
                StoryImage(
                 imageDetails: ["c5_page5", "Tanda tanya"],
                 padding:  UIEdgeInsets(top: 150, left: 35, bottom: 300, right: 10),
                 size: .zero
                ),
                StoryLabel(
                 text: "Kamu tahu tidak mengapa terjadi perubahan pada suara ketika pubertas?",
                 type: .bold,
                 targetText: ["Kamu tahu tidak mengapa terjadi perubahan pada suara ketika pubertas?"],
                 alignment: .center,
                    fontsize: 25,
                    padding: UIEdgeInsets(top: 0, left: 35, bottom: 0, right: 35),
                 size: .zero
                )
            ],
            
            [//page6
                StoryLabel(
                 text: "Memasuki usia remaja, anak laki-laki mulai menunjukkan perubahan yang signifikan, salah satunya suara yang berubah menjadi berat dan terdengar serak. Perubahan ini juga menimbulkan rasa pada bagian tenggorokan.",
                 type: .bold,
                 targetText: ["sakit perut", "tidak"],
                 alignment: .left,
                 padding: UIEdgeInsets(top: 80, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryImage(
                 imageDetails: ["c5_page6", "Anak laki-laki memegang kedua leher dengan ekspresi panik"],
                 padding:  UIEdgeInsets(top: 65, left: 10, bottom: 140, right: 10),
                 size: .zero
                ),
            ],
            
            [//page7 REVISI GAMBAR NAIKIN, PARAGRAF 2 NAIKIN
                StoryLabel(
                 text: "Untuk menghasilkan suara, paru-paru akan mengalirkan dan menekan udara sehingga pita suara bergetar. Pita suara adalah tulang rawan berbentuk pita ganda yang terletak di dalam kotak suara yang dinamakan laring.",
                 type: .bold,
                 targetText: ["laring"],
                 alignment: .left,
                 padding: UIEdgeInsets(top: 80, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryImage(
                 imageDetails: ["c5_page7", "Ilustrasi anatomi tubuh dan pergerakan udara penyebab terbentuknya suara"],
                 padding:  UIEdgeInsets(top: 30, left: 10, bottom: 0, right: 10),
                 size: CGSize(width: 0, height: 150)
                ),
                StoryLabel(
                 text: "Perannya sangat penting karena getaran yang dihasilkan akan menentukan tone/bentuk suara yang dihasilkan.",
                 type: .highlight,
                 targetText: [""],
                 alignment: .left,
                 padding: UIEdgeInsets(top: 30, left: 35, bottom: 0, right: 35),
                 size: .zero
                )
            ],
            
            [//page8 GAMBAR KECILIN
                StoryImage(
                 imageDetails: ["c5_page8", "Ilustrasi hormon yang mempengaruhi Perubahan Suara pada anak laki-laki"],
                 padding:  UIEdgeInsets(top: 30, left: 10, bottom: 350, right: 10),
                 size: .zero
                ),
                StoryLabel(
                 text: "Perkembangan pita suara anak laki-laki juga dipengaruhi hormon testosteron. Peningkatan hormon ini pada masa puber semakin mempercepat perpanjangan tulang rawan laring dan pita suara.",
                 type: .bold,
                 targetText: ["sakit perut", "tidak"],
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryLabel(
                 text: "Hormon ini juga membuat pita suara menebal dan menyebabkan perubahan pada timbre (warna suara) sehingga membuat suara menjadi serak dan terdengar berat.",
                 type: .bold,
                 targetText: ["timbre"],
                 alignment: .left,
                 padding: UIEdgeInsets(top: 15, left: 35, bottom: 0, right: 35),
                 size: .zero
                )
            ],
            
            [//page9 BUTTON PAHAM NAIKIN
                StoryImage(
                 imageDetails: ["c5_page9", "Pak guru dan anak laki-laki mengangkat jempol dan tersenyum"],
                 padding:  UIEdgeInsets(top: 50, left: 10, bottom: 350, right: 10),
                 size: .zero
                ),
                StoryLabel(
                 text: "Jadi kamu tidak perlu cemas akan hal ini, perubahan yang kamu alami merupakan hal yang wajar kok. ??? ujar pak Guru pada Putra. \nMendengar penjelasan dari pak Guru, Putra pun menjadi paham penyebab dari perubahan suara yang sedang dialaminya.",
                 type: .bold,
                 targetText: [""],
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryLabel(
                 text: "Bagaimana denganmu?",
                 type: .bold,
                 targetText: ["Bagaimana denganmu?"],
                 alignment: .center,
                 padding: UIEdgeInsets(top: 15, left: 35, bottom: 0, right: 35),
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
