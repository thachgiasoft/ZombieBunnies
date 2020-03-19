//
//  No35.swift
//  ZombieBunnies
//
//  Created by steve groves on 08/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No35: View {
    @State var goto30: Bool = false
    @State var goto46: Bool = false
    var body: some View {
        VStack {
            Text("Page 35").padding(.horizontal)
            Divider()
            VStack {
                Text("You manage to dodge the zombies and get to the tractor. You climb aborad and Pa starts the engine.").padding()
                Text("You take off in a cloud of dust.").padding()
                Text("But where should you go now?").padding()
            }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto30 = true}, label: {Text("Go back to your farm").font(.headline)})
                .sheet(isPresented: $goto30, content: {
                   No30()
            })
            Divider().padding()
            Button(action: {self.goto46 = true}, label: {Text("Find somewhere you can hold out").font(.headline)})
                .sheet(isPresented: $goto46, content: {
                   No46()
            })
        }
    }
}

struct No35_Previews: PreviewProvider {
    static var previews: some View {
        No35()
    }
}
