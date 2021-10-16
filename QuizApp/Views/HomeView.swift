//
//  HomeView.swift
//  QuizApp
//
//  Created by FX on 2021/10/16.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("〇〇クイズ")
                .font(.system(size: 50))
                .padding(.top, 50)
            Spacer()
            
            Button(action: {
                
            }) {
                Text("スタート")
                    .font(.system(size: 30))
            }
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
