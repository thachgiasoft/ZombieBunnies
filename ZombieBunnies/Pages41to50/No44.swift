//
//  No44.swift
//  ZombieBunnies
//
//  Created by steve groves on 08/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No44: View {
    @State var goto20: Bool = false
    @State var goto9: Bool = false
    var body: some View {
        VStack {
            Text("Page 44").padding(.horizontal)
            Divider()
            VStack {
                Text("You duck behind the market stalls.  For a while nothing happens.  You look up - and find yourself staring into the leering face of zombie Benny!").padding()
                Text("He's found you!").padding()
                Text("You look around desperately for something you can use to defend yourself...").padding()
            }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto20 = true}, label: {Text("Grab something from the sports stall").font(.headline)})
                .sheet(isPresented: $goto20, content: {
                   No20()
            })
            Divider().padding()
            Button(action: {self.goto9 = true}, label: {Text("Head for the ice-cream stall").font(.headline)})
                .sheet(isPresented: $goto9, content: {
                   No9()
            })
        }
    }
}

struct No44_Previews: PreviewProvider {
    static var previews: some View {
        No44()
    }
}
