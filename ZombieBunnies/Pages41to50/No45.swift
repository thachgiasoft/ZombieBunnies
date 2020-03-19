//
//  No45.swift
//  ZombieBunnies
//
//  Created by steve groves on 09/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No45: View {
    @State var goto1: Bool = false
    var body: some View {
        VStack {
            Text("Page 45")
            Divider()
            VStack {
                Text("You and Benny stalk zombie bunnies with your headphones playing ''Let it grow''.  You clamp your headphones over zombie bunny ears.").padding()
                Text("But the song takes time to work on the zombies. As you are playing thr track to the third shudderring bunny, you feel a terrible pain in your arm. ''").padding()
                Text("Another bunny has crept up behind you -  ").padding()

                Text("You've been ZOMBIFIED!!!!").font(.headline)
                    }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto1 = true}, label: {Text("Go back to start").font(.headline)})
                        .sheet(isPresented: $goto1, content: {
                           No1()
            })
        }
    }
}

struct No45_Previews: PreviewProvider {
    static var previews: some View {
        No45()
    }
}
