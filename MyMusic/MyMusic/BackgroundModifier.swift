//
//  BackgroundModifier.swift
//  MyMusic
//
//  Created by Shin Higa on 10/21/24.
//

import SwiftUI

extension Image {
    func backgroundModifier() -> some View {
        // 画像を表示するImageのインスタンス
        self
        // resize
            .resizable()
        // ignore safeare of the screen
            .ignoresSafeArea()
        // to fill the pic on the screen
            .scaledToFill()
    } // backgroundMOdifier ends here
} // Image ends here
