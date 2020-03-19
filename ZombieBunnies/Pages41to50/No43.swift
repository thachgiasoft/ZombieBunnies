//
//  No43.swift
//  ZombieBunnies
//
//  Created by steve groves on 09/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No43: View {
    @State var goto1: Bool = false
    var body: some View {
        VStack {
            Text("Page 43")
            Divider()
            VStack {
                Text("''We should help those kids,'' says Benny.").padding()
                Text("''We'd never get past the zombies'' you say. ''Keep going.''").padding()
                Text("Suddenly, the truck's engine dies. As Benny desperately tries to restart it, zombie bunnies surround thr truck and drag you to your doom. ").padding()
                HStack {
                    Text("Doh!!! You are  been...ZOMBIFIED!").font(.headline).padding(.horizontal)
                    Image("Zombie_bunny3")
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

struct No43_Previews: PreviewProvider {
    static var previews: some View {
        No43()
    }
}
