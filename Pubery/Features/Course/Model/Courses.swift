//
//  Courses.swift
//  Pubery
//
//  Created by Antony Susanto on 01/08/21.
//

import UIKit

enum Courses: String {
	//nama file = nama enum = nama class
	case C1_MenstruasiPertama = "Awal Menstruasi",
		 C2_TentangMenstruasi = "Tentang Menstruasi",
		 C3_Jerawat = "Pengertian Jerawat",
		 C4_JakunDanFungsinya = "Jakun dan Fungsinya",
		 C5_PerubahanSuara = "Perubahan Suara",
		 C6_PerubahanSuasanaHati = "Perubahan Suasana Hati",
		C7_PertumbuhanRambut = "Pertumbuhan Rambut",
		C8_PertumbuhanOtot = "Pertumbuhan Otot",
		C9_GejalaMenstruasi = "Gejala Menstruasi",
		C10_PersetujuanDanInteraksiFisik = "Persetujuan dan Interaksi Fisik",
		C11_MenghargaiSesama = "Menghargai Sesama"
	
	
	static func getPhysicalCourses() -> [CourseHome] {
		if let gender = UserDefaults.standard.string(forKey: "selectedGender") {
			if (gender == "Male"){
				return [C4_JakunDanFungsinya_Data.home, C5_PerubahanSuara_Data.home, C7_PertumbuhanRambut_Data.home, C8_PertumbuhanOtot_Data.home, C3_Jerawat_Data.home, C1_MenstruasiPertama_Data.home, C2_TentangMenstruasi_Data.home, C9_GejalaMenstruasi_Data.home]
			}
			else if (gender == "Female"){
				return [C1_MenstruasiPertama_Data.home, C2_TentangMenstruasi_Data.home, C9_GejalaMenstruasi_Data.home, C3_Jerawat_Data.home, C4_JakunDanFungsinya_Data.home, C5_PerubahanSuara_Data.home, C7_PertumbuhanRambut_Data.home, C8_PertumbuhanOtot_Data.home]
			}
		}
		//general
		return [C1_MenstruasiPertama_Data.home, C2_TentangMenstruasi_Data.home, C3_Jerawat_Data.home, C4_JakunDanFungsinya_Data.home, C5_PerubahanSuara_Data.home, C7_PertumbuhanRambut_Data.home, C8_PertumbuhanOtot_Data.home, C9_GejalaMenstruasi_Data.home]
	}
	
	static func getMentalCourses() -> [CourseHome] {
		if let gender = UserDefaults.standard.string(forKey: "selectedGender") {
			if (gender == "Male"){
				return [C6_PerubahanSuasanaHati_Data.home, C10_PersetujuanDanInteraksiFisik_Data.home, C11_MenghargaiSesama_Data.home]
			}
			else if (gender == "Female"){
				return [C6_PerubahanSuasanaHati_Data.home, C10_PersetujuanDanInteraksiFisik_Data.home, C11_MenghargaiSesama_Data.home]
			}
		}
		//general
		return [C6_PerubahanSuasanaHati_Data.home, C10_PersetujuanDanInteraksiFisik_Data.home, C11_MenghargaiSesama_Data.home]
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
		case .C7_PertumbuhanRambut:
			return C7_PertumbuhanRambut_Data.detail
		case .C8_PertumbuhanOtot:
			return C8_PertumbuhanOtot_Data.detail
		case .C9_GejalaMenstruasi:
			return C9_GejalaMenstruasi_Data.detail
		case .C10_PersetujuanDanInteraksiFisik:
			return C10_PersetujuanDanInteraksiFisik_Data.detail
		case .C11_MenghargaiSesama:
			return C11_MenghargaiSesama_Data.detail
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
		case .C7_PertumbuhanRambut:
			return C7_PertumbuhanRambut_Data.introduction
		case .C8_PertumbuhanOtot:
			return C8_PertumbuhanOtot_Data.introduction
		case .C9_GejalaMenstruasi:
			return C9_GejalaMenstruasi_Data.introduction
		case .C10_PersetujuanDanInteraksiFisik:
			return C10_PersetujuanDanInteraksiFisik_Data.introduction
		case .C11_MenghargaiSesama:
			return C11_MenghargaiSesama_Data.introduction
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
		case .C7_PertumbuhanRambut:
			return C7_PertumbuhanRambut_Data.content
		case .C8_PertumbuhanOtot:
			return C8_PertumbuhanOtot_Data.content
		case .C9_GejalaMenstruasi:
			return C9_GejalaMenstruasi_Data.content
		case .C10_PersetujuanDanInteraksiFisik:
			return C10_PersetujuanDanInteraksiFisik_Data.content
		case .C11_MenghargaiSesama:
			return C11_MenghargaiSesama_Data.content
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
		case .C7_PertumbuhanRambut:
			return C7_PertumbuhanRambut_Data.finish
		case .C8_PertumbuhanOtot:
			return C8_PertumbuhanOtot_Data.finish
		case .C9_GejalaMenstruasi:
			return C9_GejalaMenstruasi_Data.finish
		case .C10_PersetujuanDanInteraksiFisik:
			return C10_PersetujuanDanInteraksiFisik_Data.finish
		case .C11_MenghargaiSesama:
			return C11_MenghargaiSesama_Data.finish
		}
	}


}
