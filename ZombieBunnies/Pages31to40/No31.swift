//
//  No31.swift
//  ZombieBunnies
//
//  Created by steve groves on 11/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No31: View {
    @State var goto50: Bool = false
    var body: some View {
        VStack {
            Text("Page 31")
            Divider()
            VStack {
                Text("You climb the fire escape to the roof and get in through the open skylight.").padding()
                Text("You are on a gantry above the factory floor.  You plug your ray gun into a nearby socket.  Itwhibnes as it charges.  After a couple of minutes, a green light glows.  Ready!").padding()
                Text("You point the ray gun down and fire.  Its beams sweep over zombies and veg.  Where the beam touches, zombies freeze - blink - and return to normal bunnies.  Vegetables shudder and lie still.  Minutes later the factory is full of bewildered bunnies and harmless fruit and veg.  The attack of zombie bunnies is over.").font(.headline).padding()
                    }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto50 = true}, label: {Text("What next?").font(.headline)})
                        .sheet(isPresented: $goto50, content: {
                           No50()
            })
        }
    }
}

struct No31_Previews: PreviewProvider {
    static var previews: some View {
        No31()
    }
}
