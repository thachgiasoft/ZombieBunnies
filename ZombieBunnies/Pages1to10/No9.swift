//
//  No9.swift
//  ZombieBunnies
//
//  Created by steve groves on 08/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No9: View {
    @State var goto16: Bool = false
    @State var goto25: Bool = false
    var body: some View {
        VStack {
            Text("Page 9").padding(.horizontal)
            VStack {
                Text("You run to the stall and lift the protective screen.  You pick up a tub if ice-cream and dump it over Benny's head.").padding(.horizontal)
                Text("Benny blinks.  ''Hey! What's this''?   You check the label. ''Chocolate fudge ripple,'' you say. ''Are you ok?''").padding()
                Text("Benny laughs. ''Okay? Me, okay? Sure! Why wouldn't I be okay?'' you say. ''Are you ok?''").padding(.horizontal)
                Text("You shake your head. ''Whatever happened to you, the ice-cream must've fixed it. Maybe it was the flavour - or it could be because it's cold...''").padding()
                Text("You are interrupted as your ma and pa come running around the corner - followed by a dozen shambling zombie bunnies!").padding(.horizontal)
                Text("''They are all over town!'' gasps Pa.  ''What can we do?''").padding()
            }.frame(width: 380, height: 500, alignment: .leading)
            Divider()
            Button(action: {self.goto16 = true}, label: {Text("If you want to fight the zombies").font(.headline)})
                .sheet(isPresented: $goto16, content: {
                   No16()
            })
            Divider()
            Button(action: {self.goto25 = true}, label: {Text("If you want to run away").font(.headline)})
                .sheet(isPresented: $goto25, content: {
                   No25()
            })
        }
    }
}

struct No9_Previews: PreviewProvider {
    static var previews: some View {
        No9()
    }
}
