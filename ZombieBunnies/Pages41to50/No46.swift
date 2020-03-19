//
//  No46.swift
//  ZombieBunnies
//
//  Created by steve groves on 08/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No46: View {
    @State var goto40: Bool = false
    @State var goto14: Bool = false
    var body: some View {
        VStack {
            Text("Page 46").padding(.horizontal)
            Divider()
            VStack {
                Text("You drive around town looking for places where your fellow infection-free townsfolk can gather in safety from zombie bunnies and mutated carrots.").padding()
                Text("You need somewhere big that is easy to defend.").padding()
            }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto40 = true}, label: {Text("To try the football stadium").font(.headline)})
                .sheet(isPresented: $goto40, content: {
                   No40()
            })
            Divider().padding()
            Button(action: {self.goto14 = true}, label: {Text("If you would rather try the cinema").font(.headline)})
                .sheet(isPresented: $goto14, content: {
                   No14()
            })
        }
    }
}

struct No46_Previews: PreviewProvider {
    static var previews: some View {
        No46()
    }
}
