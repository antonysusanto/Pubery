//
//  PlaySoundAsset.swift
//  Pubery
//
//  Created by Antony Susanto on 25/08/21.
//

import UIKit
import AVFoundation

class PlaySoundAsset {
	static var player: AVAudioPlayer?
	
	static func play(_ assetName : String) {
		guard let audioData = NSDataAsset(name: assetName)?.data else { return }

		do {
			player = try AVAudioPlayer(data: audioData)
			player?.volume = 0.2
		 	player?.play()
		} catch {
			print(error.localizedDescription)
	  }
  }
}
