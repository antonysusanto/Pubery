//
//  C6_PerubahanSuasanaHati_Data.swift
//  Pubery
//
//  Created by Antony Susanto on 03/08/21.
//

import UIKit

struct C6_PerubahanSuasanaHati_Data {
	static let home = CourseHome(
		id: .C6_PerubahanSuasanaHati,
		title: "Perubahan Suasana Hati",
		imageName: "c6_icon"
	)
	
	static let detail = CourseDetail(
		category: "Sosial dan Emosi",
		title: "Perubahan Suasana Hati",
		age: "Disarankan untuk anak usia 8 tahun ke atas",
		imageName: "c6_cover"
	)
	
	static let introduction = CourseIntroduction(
		introduction: ["Penjelasan apa itu perubahan suasana hati atau mood swings","Bagaimana mengontrol perubahan suasana hati"],
		advice: "Orang tua diharapkan aktif dalam mengajak anak berdialog selama cerita berlangsung",
		attention: "Materi ini berisi tentang pengetahuan psikologis yang mungkin lebih mudah dipahami untuk anak usia 8 tahun ke atas"
	)
	
	static let finish = CourseFinish(
		imageName: "c6_finish"
	)
	
	static let content = CourseContent(
		content: [
			[//page1
				StoryImage(
				 imageName: "c6_page1",
				 padding:  UIEdgeInsets(top: 50, left: 35, bottom: 250, right: 35),
				 size: .zero
				),
				StoryLabel(
				 text: "Suatu hari pada waktu makan malam,  Putra tidak sengaja menjatuhkan kue cokelat yang hendak dimakan Putri.",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
				StoryLabel(
				 text: "“Ups maaf akan--,” belum sempat Putra selesai berbicara, hal yang mengejutkan terjadi.",
				 alignment: .left,
				 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
				 size: .zero
				),
                StoryLabel(
                 text: "Tiba-tiba saja Putri menangis! Padahal detik sebelumnya, Putri masih tertawa.",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                )
			],
            
            [//page2
                StoryImage(
                 imageName: "c6_page2",
                 padding:  UIEdgeInsets(top: 50, left: 35, bottom: 250, right: 35),
                 size: .zero
                ),
                StoryLabel(
                 text: "Putra pun kebingungan dengan sikap saudarinya yang tiba-tiba saja menangis, dan Putra semakin heran karena ibu dan ayahnya justru terlihat tenang. ",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryLabel(
                 text: "Hanya mengusap-usap pundak Putri itu hingga saudarinya tenang.",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                )
            ],
            
            [//page3
                StoryImage(
                 imageName: "c6_page3",
                 padding:  UIEdgeInsets(top: 50, left: 35, bottom: 250, right: 35),
                 size: .zero
                ),
                StoryLabel(
                 text: "Dan ketika akhirnya Putri selesai menangis, Putra kembali terkejut karena Putri langsung meminta maaf.",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryLabel(
                 text: "“Ibu, ayah, akhir-akhir ini aku merasa aneh. Suatu saat aku merasa gembira, namun tiba-tiba saja aku merasa ingin menangis tanpa alasan jelas. Dan yang membuatku kesal, aku sering kesulitan mengontrolnya,” ujar Putri.",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                )
            ],
            
            [//page4
                StoryLabel(
                 text: "Putra kemudian teringat dengan kejadian dua hari yang lalu. Dia juga pernah merasakan hal yang sama.",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryImage(
                 imageName: "c6_page4",
                 padding:  UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: CGSize(width: 0, height: 300)
                ),
                StoryLabel(
                 text: "Tiba-tiba saja dia merasa sangat marah ketika temannya menyenggol lengannya saat ia sedang mencatat. Padahal itu masalah yang sangat sepele.",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                )
            ],
            
            [//page5
                StoryImage(
                 imageName: "c6_page5",
                 padding: UIEdgeInsets(top: 150, left: 35, bottom: 300, right: 35),
                    size: .zero
                ),
                StoryLabel(
                 text: "Pernahkah kamu merasakan hal yang dirasakan Putri dan Putra?",
                    type: .bold,
                    targetText: ["Pernahkah kamu merasakan hal yang dirasakan Putri dan Putra?"],
                 alignment: .center,
                    fontsize: 25,
                 padding: UIEdgeInsets(top: 0, left: 35, bottom: 0, right: 35),
                    size: .zero
                )
            ],
            
            [//page6
                StoryLabel(
                 text: "Hal itu disebut dengan perubahan suasana hati",
                    type: .highlight,
                    targetText: ["perubahan suasana hati"],
                 alignment: .left,
                 padding: UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryImage(
                 imageName: "c6_page6",
                 padding:  UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: CGSize(width: 0, height: 300)
                ),
                StoryLabel(
                 text: "Ketika manusia akan beranjak dewasa, tubuh mulai memproduksi beberapa hormon baru. Hormon-hormon baru ini sering kali menyebabkan perubahan emosi yang sulit dikontrol.",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryLabel(
                 text: "Namun, seiring berjalannya waktu, kita akan belajar bagaimana cara mengontrol emosi dengan baik.",
                 alignment: .left,
                 padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: .zero
                )
            ],
            
            [ //page7
                StoryLabel(
                 text: "“Mulai sekarang, jika kalian merasakan perubahan emosi, tahan untuk tidak berbicara berbicara. Karena Itu berpotensi menyakiti orang lain. Coba untuk menarik napas terlebih dahulu lalu hembuskan sebanyak lima kali agar tenang,” ujar ibu.",
                    type: .highlight,
                    targetText: ["menarik napas"],
                 alignment: .left,
                 padding: UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryImage(
                 imageName: "c6_page7",
                 padding:  UIEdgeInsets(top: 40, left: 35, bottom: 0, right: 35),
                 size: CGSize(width: 0, height: 200)
                ),
                 StoryButton(
                     title: "Atur Napas",
					 destination: "Breathing",
                     padding: UIEdgeInsets(top: 100, left: 120, bottom: 0, right: 120),
                     size: CGSize(width: 0, height: 40)
                 )
            ],
            
            [//page6
                StoryLabel(
                 text: "“Perubahan suasana hati bukan sesuatu yang aneh, kok. Ayah dan Ibu ketika sedang melewati masa pubertas juga mengalami hal yang sama. Yang penting adalah, kita mau belajar untuk mengontrolnya. Paham, nak?”",
                    type: .highlight,
                    targetText: ["bukan sesuatu yang aneh"],
                 alignment: .left,
                 padding: UIEdgeInsets(top: 50, left: 35, bottom: 0, right: 35),
                 size: .zero
                ),
                StoryImage(
                 imageName: "c6_page8",
                 padding:  UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                 size: CGSize(width: 0, height: 200)
                ),
                StoryLabel(
                 text: "Putra dan Putri menangguk serempak, “Paham!”",
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
                    padding: UIEdgeInsets(top: 20, left: 120, bottom: 0, right: 120),
                    size: CGSize(width: 0, height: 40)
                )
            ]
		]
	)
}
