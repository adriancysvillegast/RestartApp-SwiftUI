//
//  AudioPlayer.swift
//  Restart
//
//  Created by Adriancys Jesus Villegas Toro on 21/3/23.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch {
            print("could no play audio file")
        }
    }
}
