//
//  ContentView.swift
//  MyMusic
//
//  Created by Shin Higa on 10/21/24.
//

import SwiftUI

struct ContentView: View {
    // 音を鳴らすためのSoundPlayerクラスのインスタンス生成
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        ZStack {
            // background picture
            Image(.background)
            // 背景を表示するためにレイアウトを整える
                .backgroundModifier()
            
            // horizontal layout
            HStack {
                // cymbal button
                Button {
                    // the action when the user taps the button
                    // the button for playing cymbal sound
                    soundPlayer.cymbalPlay()
                } label: {
                    // show the cymbal picture
                    Image(.cymbal)
                } // cymbal button ends here
                
                // guitar button
                Button {
                    // the action when the user taps the button
                    // the button for playing guitar sound
                    soundPlayer.guitarPlay()
                } label: {
                    // show the guitar pic
                    Image(.guitar)
                } // guitar button ends here
            } // HStack ends here
        } // ZStack ends here
    } // body ends here
} // ContenView ends here

#Preview {
    ContentView()
}
