//
//  No15.swift
//  ZombieBunnies
//
//  Created by steve groves on 08/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No15: View {
    @State var goto1: Bool = false
    var body: some View {
        VStack {
            Text("Page 15")
            Divider()
            VStack {
                Text("You break into the factory and set the air-con to SUPER CHILL MODE").padding()
                Text("But the zombies and vegetables spot you and close in. Too late, you realise that the air-con will take a long time - maybe hours - to make the temperature low enough").padding()
                Text("That's too slow for you! You are swamped by monstrous mindless mutations and ...").padding()
                 HStack {
                        Text("You've been...ZOMBIFIED!").font(.headline).padding(.horizontal)
                        Image("Zombie_bunny")
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

struct No15_Previews: PreviewProvider {
    static var previews: some View {
        No15()
    }
}
