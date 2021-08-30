//
//  C3_Jerawat_Data.swift
//  Pubery
//
//  Created by Antony Susanto on 03/08/21.
//

import UIKit

struct C3_Jerawat_Data {
	static let home = CourseHome(
		id: .C3_Jerawat,
		title: "Pengertian Jerawat",
		imageDetails: ["c3_icon", "Pengertian Jerawat"]
	)
	
	static let detail = CourseDetail(
		category: "Fisik",
		title: "Pengertian Jerawat",
        age: "",
        imageDetails: ["c3_cover", "Dua anak menyapa dengan mengangkat tangan"]
	)
	
	static let introduction = CourseIntroduction(
		introduction: ["Proses terjadinya jerawat dan pengertian mengapa itu terjadi ","Perawatan untuk jerawat dan menjaga kebersihan wajah"],
		advice: "Orang tua diharapkan aktif dalam mengajak anak berdialog selama cerita berlangsung",
        attention: ""
	)
	
	static let finish = CourseFinish(
		imageDetails: ["c3_finish", "Dua anak sedang kebingungan"]
	)
	
	static let content = CourseContent(
		content: [
			[//page1
				StoryImage(
                imageDetails: ["c3_page1", "Dua anak sedang kebingungan"],
                padding:  UIEdgeInsets(top: 50, left: 10, bottom: 250, right: 10),
                size: .zero
				),
				StoryLabel(
                text: "Pada usia Putra dan Putri, kondisi kulit mereka berminyak dan wajah mereka tumbuh bintik merah yaitu jerawat.",
                alignment: .left,
                padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                size: .zero
				),
				StoryLabel(
                text: "Namun Putra dan Putri merasa tidak mengerti akan munculnya jerawat di kulit wajah. Sebenarnya apa itu jerawat?",
                alignment: .left,
                padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                size: .zero)
                ],
            
            [//page2
                StoryLabel(
                text: "“Jerawat sangat menganggu!” Ujar Putra.",
                alignment: .left,
                padding: UIEdgeInsets(top:80, left: 35, bottom: 0, right: 35),
                size: .zero),
            
                StoryLabel(
                text: "Jerawat menurut Putri sangat jelek dan kulitnya jadi tidak mulus. Ia juga memiliki kulit yang berminyak.",
                alignment: .left,
                padding: UIEdgeInsets(top: 10, left: 35, bottom: 40, right: 35),
                size: .zero),
            
                StoryImage(
                imageDetails: ["c3_page2", "Anak laki-laki berteriak"],
                padding: UIEdgeInsets(top: 70, left: 45, bottom: 60, right: 15),
                size: .zero)
                
                
            ],
            
            [//page3
                StoryLabel(
                text: "“Jerawat sangat menganggu!” Ujar Putra.",
                alignment: .left,
                padding: UIEdgeInsets(top: 80, left: 35, bottom: 0, right: 35),
                size: .zero),
            
                StoryLabel(
                text: "Jerawat menurut Putri sangat jelek dan kulitnya jadi tidak mulus. Ia juga memiliki kulit yang berminyak. ",
                alignment: .left,
                padding: UIEdgeInsets(top: 10, left: 35, bottom: 90, right: 35),
                size: .zero),
            
                StoryImage(
                imageDetails: ["c3_page3", "Anak perempuan melihat ke cermin"],
                padding: UIEdgeInsets(top: 70, left: 45, bottom: 60, right: 15),
                size: .zero)
            ],
            
            [//page4
                StoryImage(
                imageDetails: ["c3_page4", "Jerawat pada lapisan kulit"],
                padding: UIEdgeInsets(top: 90, left: 70, bottom: 260, right: 70),
                size: .zero),
                
                StoryLabel(
                text: "Ibu mendapati Putra dan Putri merasa terganggu dengan jerawat. ",
                alignment: .left,
                padding: UIEdgeInsets(top: 30, left: 35, bottom: 90, right: 35),
                size: .zero),
                
                StoryLabel(
                text: "“Di usia kamu sekarang ini, hormon ini jadi meningkat. Timbulah benjolan merah bernama jerawat. Jerawat muncul karena minyak berlebih pada kulit wajah.",
                alignment: .left,
                padding: UIEdgeInsets(top: 20, left: 35, bottom: 50, right: 35),
                size: .zero),
            
            ],
            [//page5
                StoryImage(
                imageDetails: ["c3_page5", "Ibu memberi pengertian kepada anak-anaknya"],
                padding: UIEdgeInsets(top: 90, left: 70, bottom: 250, right: 70),
                size: .zero),
                
                StoryLabel(
                text: "“Kita sudah tahu proses terjadinya jerawat. Jerawat pada Putra dan Putri akan berbeda juga normal terjadi. Hindari memegang jerawat dan yang terpenting sekarang adalah merawatnya dengan mencuci muka.”",
                alignment: .left,
                padding: UIEdgeInsets(top: 30, left: 35, bottom: 0, right: 35),
                size: .zero),
            
            ],
            [//page6
                StoryImage(
                imageDetails: ["c3_page6-1", "Wajah anak bersih setelah mencuci muka"],
                padding: UIEdgeInsets(top: 90, left: 70, bottom: 250, right: 70),
                size: .zero),
                
                StoryLabel(
                text: "Waktunya membersihkan diri dan cuci muka dengan sabun wajah. Pastikan tangan dalam keadaan bersih juga ya!",
                alignment: .center,
                padding: UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 35),
                size: .zero),
                
                StoryButton(
                    title: "Bersihkan", destination: "Acne",
                    padding: UIEdgeInsets(top: 40, left: 120, bottom: 0, right: 120),
                    size: CGSize(width: 0, height: 40)
                ),
            ],
            [//page7
                StoryImage(
                imageDetails: ["c3_page6", "Anak-anak menunjukkan sabun cuci muka"],
                padding: UIEdgeInsets(top: 90, left: 60, bottom: 310, right: 60),
                size: .zero),
                
                StoryLabel(
                text: "Setelah mencuci, wajah tidak kusam dan bersih. Dengan perawatan teratur dapat mengurangi resiko jerawat berlebih. Putra dan Putri paham dan mereka pun merawat wajah mereka.",
                alignment: .left,
                padding: UIEdgeInsets(top: 10, left: 35, bottom: 0, right: 35),
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
                size: CGSize(width: 0, height: 40)),
                
               ],
            ]
    )

}
