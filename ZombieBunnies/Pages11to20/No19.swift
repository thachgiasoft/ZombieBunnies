//
//  No19.swift
//  ZombieBunnies
//
//  Created by steve groves on 08/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No19: View {
    @State var goto1: Bool = false
    var body: some View {
        VStack {
            Text("Page 19")
            Divider()
            VStack {
                Text("You chase the zombies as they shamblews away.  But when they are a block away from the cinema, they calm down and shuffle round before heasding back towards you.").padding()
                Text("You skid to a halt and turn to run, but too late!  Zombie paws clutch at you and bunny teeth bite down..").padding()
                 HStack {
                    Text("You've been.. ZOMBIFIED !").font(.headline).padding(.horizontal)
                        Image("Zombie_bunny")
                            .resizable()
                            .renderingMode(.original)
                            .padding()
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

struct No19_Previews: PreviewProvider {
    static var previews: some View {
        No19()
    }
}
