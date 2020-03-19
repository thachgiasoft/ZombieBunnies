//
//  No3a.swift
//  ZombieBunnies
//
//  Created by steve groves on 10/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No3a: View {
    @State var goto13: Bool = false
    @State var goto39: Bool = false
    var body: some View {
        VStack {
            Text("Page 3").padding(.horizontal)
            Divider()
            VStack {
                Text("By the end of the song, the carrots lie still and the rabbits have been...").padding()
                Text("UNZOMBIEFIED!").padding()
                Text("Benny slaps you on the back. ''It's over! You're a genius''.").padding()

            }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto13 = true}, label: {Text("If you agree with Benny").font(.headline)})
                .sheet(isPresented: $goto13, content: {
                   No13()
            })
            Divider().padding()
            Button(action: {self.goto39 = true}, label: {Text("If you think he's making a mistake").font(.headline)})
                .sheet(isPresented: $goto39, content: {
                   No39()
            })
        }
    }
}

struct No3a_Previews: PreviewProvider {
    static var previews: some View {
        No3a()
    }
}
