//
//  No4.swift
//  ZombieBunnies
//
//  Created by steve groves on 08/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No4: View {
    @State var goto1: Bool = false
    var body: some View {
        VStack {
            Text("Page 4")
            Divider()
            VStack {
                Text("You, Ma and Pa grab the carrots and try to stuff them back into their sacks.").padding()
                Text("The carrots might be small, but they're strong, and too quick.  Within seconds, they are swarming all over you.").padding()
                Text("Their bites turns your brain to carrot juice...").padding()
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

struct No4_Previews: PreviewProvider {
    static var previews: some View {
        No4()
    }
}
