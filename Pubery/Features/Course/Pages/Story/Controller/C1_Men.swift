//
//  C1_Men.swift
//  Pubery
//
//  Created by Antony Susanto on 01/08/21.
//

import UIKit

struct C1_Men_Pages {
	static let pages = [
		[ //page1
				StoryImage(
					imageName: "page1",
					padding:  UIEdgeInsets(top: 50, left: 10, bottom: 250, right: 10),
					size: .zero
				),
				StoryLabelRegular(
					text: "Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.",
					padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20),
					size: .zero
				),
			],
			[ //page2
				StoryLabelRegular(
					text: "Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.",
					padding: UIEdgeInsets(top: 40, left: 20, bottom: 0, right: 20),
					size: .zero
				),
				StoryLabelRegular(
					text: "Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.",
					padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20),
					size: .zero
				),
				StoryLabelRegular(
					text: "Suatu pagi Putri merasakan sakit perut. Namun, tidak seperti biasanya, sakit perut Putri kali ini tidak kunjung menghilang.",
					padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20),
					size: .zero
				),
				StoryImage(
					imageName: "page1",
					padding:  UIEdgeInsets(top: 20, left: 10, bottom: 0, right: 10),
					size: CGSize(width: 0, height: 220)
				),
				StoryButton(
					title: "Main", destination: "Pads",
					padding: UIEdgeInsets(top: 20, left: 120, bottom: 0, right: 120),
					size: CGSize(width: 0, height: 40)
				),
			],
		]
}


