//
//  No49.swift
//  ZombieBunnies
//
//  Created by steve groves on 11/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No49: View {
    @State var goto1: Bool = false
    var body: some View {
        VStack {
            Text("Page 49")
            Divider()
            VStack {
                Text("You lead the zombie bunnies out of town.").padding()
                Text("You want to get them as far away as possible.").padding()
                Text("But one by one, the phone batteries start to die.  As they do so the zombies close in.").padding()
                Text("Eventually, only one phone is playing.").padding()
                Text("''Let it...''").padding()
                Text("Silence.").padding()
                Text("The zombies pounce.  You are ZOMBIFIED!!!!").font(.headline)
                    }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto1 = true}, label: {Text("Go back to start").font(.headline)})
                        .sheet(isPresented: $goto1, content: {
                           No1()
            })
        }
    }
}

struct No49_Previews: PreviewProvider {
    static var previews: some View {
        No49()
    }
}
