//
//  ContentView.swift
//  QuizApp
//
//  Created by FX on 2021/10/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeView()
            .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
