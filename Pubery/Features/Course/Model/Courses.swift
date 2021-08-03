//
//  Courses.swift
//  Pubery
//
//  Created by Antony Susanto on 01/08/21.
//

import UIKit

enum Courses {
	//nama file = nama enum = nama class
	case C1_MenstruasiPertama,
		 C2_TentangMenstruasi,
		 C3_Jerawat,
		 C4_JakunDanFungsinya,
		 C5_PerubahanSuara,
		 C6_PerubahanSuasanaHati
	
	
	static func getPhysicalCourses() -> [CourseHome] {
		if let gender = UserDefaults.standard.value(forKey: "selectedGender") as? String {
			if (gender == "male"){
				return [C1_MenstruasiPertama_Data.home]
			}
			else if (gender == "female"){
				return [C1_MenstruasiPertama_Data.home]
			}
		}
		//general
		return [C1_MenstruasiPertama_Data.home, C2_TentangMenstruasi_Data.home, C3_Jerawat_Data.home, C4_JakunDanFungsinya_Data.home, C5_PerubahanSuara_Data.home, C6_PerubahanSuasanaHati_Data.home]
	}
	
	static func getMentalCourses() -> [CourseHome] {
		if let gender = UserDefaults.standard.value(forKey: "selectedGender") as? String {
			if (gender == "male"){
				return [C1_MenstruasiPertama_Data.home]
			}
			else if (gender == "female"){
				return [C1_MenstruasiPertama_Data.home]
			}
		}
		//general
		return [C1_MenstruasiPertama_Data.home, C2_TentangMenstruasi_Data.home, C3_Jerawat_Data.home, C4_JakunDanFungsinya_Data.home, C5_PerubahanSuara_Data.home, C6_PerubahanSuasanaHati_Data.home]
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


}
