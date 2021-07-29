//
//  HomeData.swift
//  Pubery
//
//  Created by Olivia Dwi  Susanti on 26/07/21.
//

import Foundation
import UIKit

struct HomeData {
    static var changesModel: ChangeModel{
        get{
            return
                ChangeModel(responses: [
                    Change(typeOfChanges: "Physical Changes", materialChanges: [
                        Course(courseName: "Pubertas Pada Laki-Laki",
                               image: UIImage(systemName: "book") ?? UIImage(),
                               checkListImage: UIImage(systemName: "checkmark.circle.fill") ?? UIImage()),
                        Course(courseName: "Awal Menstruasi",
                               image: UIImage(systemName: "book") ?? UIImage(),
                               checkListImage: UIImage(systemName: "checkmark.circle.fill") ?? UIImage()),
                        Course(courseName: "Tentang Menstruasi",
                               image: UIImage(systemName: "book") ?? UIImage(),
                               checkListImage: UIImage(systemName: "checkmark.circle.fill") ?? UIImage()),
                        Course(courseName: "Efek Menstruasi",
                               image: UIImage(systemName: "book") ?? UIImage(),
                               checkListImage: UIImage(systemName: "checkmark.circle.fill") ?? UIImage()),
                    ]),
                    Change(typeOfChanges: "Emotion Changes", materialChanges: [
                        Course(courseName: "Perubahan Sosial dan Emosi",
                               image: UIImage(systemName: "book") ?? UIImage(),
                               checkListImage: UIImage(systemName: "checkmark.circle.fill") ?? UIImage()),
                        Course(courseName: "Pengaruh Hormon",
                               image: UIImage(systemName: "book") ?? UIImage(),
                               checkListImage: UIImage(systemName: "checkmark.circle.fill") ?? UIImage()),
                        Course(courseName: "Rebellion Stage",
                               image: UIImage(systemName: "book") ?? UIImage(),
                               checkListImage: UIImage(systemName: "checkmark.circle.fill") ?? UIImage()),
                    ])
                ])
            
        }
    }
}
