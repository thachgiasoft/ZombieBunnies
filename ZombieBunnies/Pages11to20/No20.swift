//
//  No20.swift
//  ZombieBunnies
//
//  Created by steve groves on 08/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No20: View {
    @State var goto1: Bool = false
    var body: some View {
        VStack {
            Text("Page 20")
            Divider()
            VStack {
                Text("You race to the stall and grab whatever sports equipment you can.  You hurl golf balls, baseball bats and hockey sticks at Benny.  They bounce off.").padding()
                Text("You pick up a racket and smash tennis balls at him.  They don't even slow him down.").padding()
                Text("Before you can think of anything else, you are in the grips of zombie Benny. His long teeth chomp into your shoulder. Instantly, you lose the plot.").padding()
                Text("You've been......Z-O-M-B-I-F-I-E-D!!!!").font(.headline).padding()
                    }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto1 = true}, label: {Text("Go back to start").font(.headline)})
                        .sheet(isPresented: $goto1, content: {
                           No1()
            })
        }
    }
}

struct No20_Previews: PreviewProvider {
    static var previews: some View {
        No20()
    }
}
