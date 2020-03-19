//
//  No29.swift
//  ZombieBunnies
//
//  Created by steve groves on 07/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No29: View {
    @State var goto38: Bool = false
    @State var goto44: Bool = false
    var body: some View {
        VStack {
            Text("Page 29").padding(.horizontal)
            Divider()
            VStack {
                Text("Zombie Benny bunny lurches towards you. You run down the street and turn a corner.").padding()
                Text("To your left is a coffee shop with very few customers").padding()
                Text("To your right are more market stalls").padding()
            }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto38 = true}, label: {Text("To hide in the coffee shop").font(.headline)})
                .sheet(isPresented: $goto38, content: {
                   No38()
            })
            Divider().padding()
            Button(action: {self.goto44 = true}, label: {Text("Duck down behind a market stall").font(.headline)})
                .sheet(isPresented: $goto44, content: {
                   No44()
            })
        }
    }
}

struct No29_Previews: PreviewProvider {
    static var previews: some View {
        No29()
    }
}
