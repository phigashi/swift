//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by Shin Higa on 10/21/24.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    // cymbal sound data
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    
    // シンバル用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    
    // guitar sound data
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    
    // ギター用プレイヤーの変数
    var guitarPlayer: AVAudioPlayer!
    
    func cymbalPlay() {
        do {
            // シンバル用のプレイヤーに、音源データを指定
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            
            // play cymbal sound
            cymbalPlayer.play()
        } catch {
            print("シンバルで、エラーが発生しました！")
        }
    } //cymbal ends here
    func guitarPlay() {
        do {
            // ギター用のプレイヤーに、音源データを指定
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            
            // play guitar sound
            guitarPlayer.play()
        } catch {
            print("ギターで、エラーが発生しました!")
        }
    } // guitar ends here
}
