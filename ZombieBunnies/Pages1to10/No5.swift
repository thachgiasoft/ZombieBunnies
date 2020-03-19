//
//  No5.swift
//  ZombieBunnies
//
//  Created by steve groves on 09/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No5: View {
    @State var goto34: Bool = false
    @State var goto22: Bool = false
    var body: some View {
        VStack {
            Text("Page 5").padding(.horizontal)
            Divider()
            VStack {
                Text("You hand the loud-hailer to Benny, and head for the school, looking for anything that might help you get the kids out.").padding()
                Text("A fire engine with a turnable ladder is parked nearby.  In a corner of the school is a bouncy castle.").padding()
            }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto34 = true}, label: {Text("Use the fire engine").font(.headline)})
                .sheet(isPresented: $goto34, content: {
                   No34()
            })
            Divider().padding()
            Button(action: {self.goto22 = true}, label: {Text("Use the bouncy castle").font(.headline)})
                .sheet(isPresented: $goto22, content: {
                   No22()
            })
        }
    }
}

struct No5_Previews: PreviewProvider {
    static var previews: some View {
        No5()
    }
}
