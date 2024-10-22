//
//  ContentView.swift
//  MyJanken
//
//  Created by Shin Higa on 10/21/24.
//

import SwiftUI

struct ContentView: View {
    
    // じゃんけんの結果を格納する
    @State var jankenNumber = 0
    
    var body: some View {

        VStack {
            
            //スペースの追加
            Spacer()
            // じゃんけんif説
            if jankenNumber == 0 {
                
                Text("これからじゃんけんをします！")
                    // 下辺に余白を作る
                    .padding(.bottom)
            } else if jankenNumber == 1 {
                // じゃんけんの数字が１だったら、グー
                //グー画像の指定
                Image(.gu)
                //リサイズの指定
                    .resizable()
                //アスペクト比の維持
                    .scaledToFit()
                //スペースの追加
                Spacer()
                //じゃんけんの指定
                Text("グー")
                // 下辺に余白を作る
                .padding(.bottom)
            } else if jankenNumber == 2 {
                // じゃんけんの数字が２だったら、チョキ
                //チョキ画像の指定
                Image(.choki)
                //リサイズの指定
                    .resizable()
                //アスペクト比の維持
                    .scaledToFit()
                //スペースの追加
                Spacer()
                //じゃんけんの指定
                Text("チョキ")
                // 下辺に余白を作る
                .padding(.bottom)
            } else {
                // じゃんけんの数字が1,2以外だったらパー
                //パー画像の指定
                Image(.pa)
                //リサイズの指定
                    .resizable()
                //アスペクト比の維持
                    .scaledToFit()
                //スペースの追加
                Spacer()
                //じゃんけんの指定
                Text("パー")
                // 下辺に余白を作る
                .padding(.bottom)
            } // if ここまで
            
            // ジャンケンする(Button)
            Button(action: {
                // 次のジャンケンへ
                jankenNumber = Int.random(in: 1...3)

                //新しいじゃんけんの格納
                var newJankenNumber = 0
                
                //ランダムに結果を出す、前回の結果と異なる時のみ採用
                //repeatはくりかえしを意味する
                repeat {
                    //１、２、３の数値をランダムに算出
                    newJankenNumber = Int.random(in: 1...3)
                    
                    //前回と同じ結果のときは、再度ランダムに数値を出す
                    //異なる結果のときは、repeatを続ける
                } while jankenNumber == newJankenNumber
                
                //新しいじゃんけんの結果の格納
                jankenNumber = newJankenNumber
            }, label: {
                //　Buttonに表示する文字の指定
                Text("じゃんけんする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(.pink)
                    .foregroundColor(.white)
            }) //　ジャンケンボタン終わり
        } //　VStack ここまで
    } //bodyここまで
} // Contentviewここまで

#Preview {
    ContentView()
}
