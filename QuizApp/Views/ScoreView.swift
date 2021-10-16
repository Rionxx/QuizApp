//
//  ScoreView.swift
//  QuizApp
//
//  Created by FX on 2021/10/16.
//

import SwiftUI

struct ScoreView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("スコア確認")
                    .font(.system(size: 40))
                    .padding(.top, 100)
                    Spacer()
                
                
                NavigationLink(destination: HomeView()) {
                    Text("トップに戻る")
                }
                .font(.system(size: 40))
                .padding(.bottom, 150)
                Spacer()
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true)
            }
        }
        
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}
