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
		title: "Awal Menstruasi",
		imageName: "page2a"
	)
	
	static let detail = CourseDetail(
		category: "Reproduksi",
		title: "Awal Menstruasi",
		age: "Disarankan untuk anak usia 8 tahun ke atas",
		imageName: "page7"
	)
	
	static let introduction = CourseIntroduction(
		introduction: ["ini 1","ini 2"],
		advice: "rajin menabung",
		attention: "siap"
	)
	
	static let content = CourseContent(
		content: [
			[//page1
				StoryImage(
				 imageName: "page1",
				 padding:  UIEdgeInsets(top: 50, left: 10, bottom: 250, right: 10),
				 size: .zero
				),
				StoryLabel(
				 text: "Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.",
				 type: .bold,
				 targetText: ["sakit perut", "tidak"],
				 alignment: .justified,
				 padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20),
				 size: .zero
				),
				StoryLabel(
				 text: "Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.",
				 type: .highlight,
				 targetText: ["sakit perut", "menghilang"],
				 alignment: .justified,
				 padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20),
				 size: .zero
				)
			],
		]
	)
}
