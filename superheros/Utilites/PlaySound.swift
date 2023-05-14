//
//  PlaySound.swift
//  superheros
//
//  Created by MacBook Pro on 26/05/2022.
//

import Foundation
import AVFoundation

var audioPlayer : AVAudioPlayer?

func playSound(sound: String , type : String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
        }catch{
            print("canot paly sound")
        }
    }
}
