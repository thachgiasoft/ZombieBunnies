//
//  ContentView.swift
//  ZombieBunnies
//
//  Created by steve groves on 07/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var introduction: Bool = false
    var body: some View {
        Button(action: {self.introduction = true
            }) {
                Image("AotZB")
                    .resizable()
                    .renderingMode(.original)
                }.sheet(isPresented: $introduction, content: {
                       Intro()
                })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
