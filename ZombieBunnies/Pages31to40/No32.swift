//
//  No32.swift
//  ZombieBunnies
//
//  Created by steve groves on 11/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No32: View {
    @State var goto7: Bool = false
    var body: some View {
        VStack {
            Text("Page 32")
            Divider()
            VStack {
                Text("You snatch a couple of water-filled fire extinguishers from the entrance, and rush out to spray two nearby zombire bunnies.").padding()
                Text("The zombies look puzzled and wet, but the water seems to have no effect.").padding()
                Text("''It must have been the song that scares them,'' you say, as you race back to the cinema.").padding()
                    }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto7 = true}, label: {Text("What next?").font(.headline)})
                        .sheet(isPresented: $goto7, content: {
                           No7()
            })
        }
    }
}

struct No32_Previews: PreviewProvider {
    static var previews: some View {
        No32()
    }
}
