//
//  No48.swift
//  ZombieBunnies
//
//  Created by steve groves on 11/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No48: View {
    @State var goto1: Bool = false
    var body: some View {
        VStack {
            Text("Page 48")
            Divider()
            VStack {
                Text("You go down to the entrance ''We're going to fight our way out! you cry.").padding()
                Text("Some of the younger guinea pigs, hamsters and mice arm themselves with ice-cream tubs from the cold store.").padding()
                Text("You all rush out, hurling pint-sized pots of ice-cream.  But they are too small to stop the zombies.  Within seconds, your tiny animal force is overtwhelmed!").padding()
                HStack {
                    Text("Oh no!! You have been...ZOMBIFIED!").font(.headline).padding(.horizontal)
                    Image("Zombie_bunny2")
                        .resizable()
                        .renderingMode(.original)
                       }
                    }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto1 = true}, label: {Text("Go back to start").font(.headline)})
                        .sheet(isPresented: $goto1, content: {
                           No1()
            })
        }
    }
}

struct No48_Previews: PreviewProvider {
    static var previews: some View {
        No48()
    }
}
