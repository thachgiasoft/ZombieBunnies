//
//  No16.swift
//  ZombieBunnies
//
//  Created by steve groves on 08/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No16: View {
    @State var goto1: Bool = false
    var body: some View {
        VStack {
            Text("Page 16")
            Divider()
            VStack {
                Text("''Grab the ice-cream'' you cry.").padding()
                Text("You dump the ice-cream tubs on the leading zombies. Benny helps you. But you soon run out of tubs, and the remaining zombies grab you before you can run!").padding()
                Text("The zombies bite takes you straight to  La-La-Land").padding()
                 HStack {
                        Text("You've been...ZOMBIFIED!").font(.headline).padding(.horizontal)
                        Image("Zombie_bunny3")
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

struct No16_Previews: PreviewProvider {
    static var previews: some View {
        No16()
    }
}
