//
//  Courses.swift
//  Pubery
//
//  Created by Antony Susanto on 01/08/21.
//

import UIKit

enum Courses: String {
	//nama file = nama enum = nama class
	case C1_MenstruasiPertama = "Menstruasi Pertama",
		 C2_TentangMenstruasi = "Tentang Menstruasi",
		 C3_Jerawat = "Jerawat",
		 C4_JakunDanFungsinya = "Jakun dan Fungsinya",
		 C5_PerubahanSuara = "Perubahan Suara",
		 C6_PerubahanSuasanaHati = "Perubahan Suasana Hati"
	
	
	static func getPhysicalCourses() -> [CourseHome] {
		if let gender = UserDefaults.standard.string(forKey: "selectedGender") {
			if (gender == "Male"){
				return [C4_JakunDanFungsinya_Data.home, C5_PerubahanSuara_Data.home, C3_Jerawat_Data.home, C1_MenstruasiPertama_Data.home, C2_TentangMenstruasi_Data.home]
			}
			else if (gender == "Female"){
				return [C1_MenstruasiPertama_Data.home, C2_TentangMenstruasi_Data.home, C3_Jerawat_Data.home, C4_JakunDanFungsinya_Data.home, C5_PerubahanSuara_Data.home]
			}
		}
		//general
		return [C1_MenstruasiPertama_Data.home, C2_TentangMenstruasi_Data.home, C3_Jerawat_Data.home, C4_JakunDanFungsinya_Data.home, C5_PerubahanSuara_Data.home]
	}
	
	static func getMentalCourses() -> [CourseHome] {
		if let gender = UserDefaults.standard.string(forKey: "selectedGender") {
			if (gender == "Male"){
				return [C6_PerubahanSuasanaHati_Data.home]
			}
			else if (gender == "Female"){
				return [C6_PerubahanSuasanaHati_Data.home]
			}
		}
		//general
		return [C6_PerubahanSuasanaHati_Data.home]
	}
	
	func getCourseDetail() -> CourseDetail {
		switch (self) {
		case .C1_MenstruasiPertama:
			return C1_MenstruasiPertama_Data.detail
		case .C2_TentangMenstruasi:
			return C2_TentangMenstruasi_Data.detail
		case .C3_Jerawat:
			return C3_Jerawat_Data.detail
		case .C4_JakunDanFungsinya:
			return C4_JakunDanFungsinya_Data.detail
		case .C5_PerubahanSuara:
			return C5_PerubahanSuara_Data.detail
		case .C6_PerubahanSuasanaHati:
			return C6_PerubahanSuasanaHati_Data.detail
		}
	}
	
	func getCourseIntroduction() -> CourseIntroduction {
		switch (self) {
		case .C1_MenstruasiPertama:
			return C1_MenstruasiPertama_Data.introduction
		case .C2_TentangMenstruasi:
			return C2_TentangMenstruasi_Data.introduction
		case .C3_Jerawat:
			return C3_Jerawat_Data.introduction
		case .C4_JakunDanFungsinya:
			return C4_JakunDanFungsinya_Data.introduction
		case .C5_PerubahanSuara:
			return C5_PerubahanSuara_Data.introduction
		case .C6_PerubahanSuasanaHati:
			return C6_PerubahanSuasanaHati_Data.introduction
		}
	}
	
	func getContent() -> CourseContent {
		switch (self) {
		case .C1_MenstruasiPertama:
			return C1_MenstruasiPertama_Data.content
		case .C2_TentangMenstruasi:
			return C2_TentangMenstruasi_Data.content
		case .C3_Jerawat:
			return C3_Jerawat_Data.content
		case .C4_JakunDanFungsinya:
			return C4_JakunDanFungsinya_Data.content
		case .C5_PerubahanSuara:
			return C5_PerubahanSuara_Data.content
		case .C6_PerubahanSuasanaHati:
			return C6_PerubahanSuasanaHati_Data.content
		}
	}
	
	func getFinish() -> CourseFinish {
		switch (self) {
		case .C1_MenstruasiPertama:
			return C1_MenstruasiPertama_Data.finish
		case .C2_TentangMenstruasi:
			return C2_TentangMenstruasi_Data.finish
		case .C3_Jerawat:
			return C3_Jerawat_Data.finish
		case .C4_JakunDanFungsinya:
			return C4_JakunDanFungsinya_Data.finish
		case .C5_PerubahanSuara:
			return C5_PerubahanSuara_Data.finish
		case .C6_PerubahanSuasanaHati:
			return C6_PerubahanSuasanaHati_Data.finish
		}
	}


}
