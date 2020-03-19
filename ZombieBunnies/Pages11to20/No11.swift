//
//  No11.swift
//  ZombieBunnies
//
//  Created by steve groves on 08/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No11: View {
    @State var goto1: Bool = false
    var body: some View {
        VStack {
            Text("Page 11")
            Divider()
            VStack {
                Text("You take a bike from the shop. ''I'll ride to Spudsville for help!'' you cry.  You set off. On your bike, you are too fast for the zombie bunnies. They clutch at you in vain.").padding()
                Text("But at the edge of town, your way is blocked by a zombie bunny hord!   You veer off the road - into deep mud, and big trouble.").padding()
                Text("The bike will not move. You are still trying to tug it free when the zombies attack...").padding()
                 HStack {
                        Text("You've been...ZOMBIFIED!").font(.headline).padding(.horizontal)
                        Image("Zombie_bunny2")
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

struct No11_Previews: PreviewProvider {
    static var previews: some View {
        No11()
    }
}
