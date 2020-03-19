//
//  No24.swift
//  ZombieBunnies
//
//  Created by steve groves on 11/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No24: View {
    @State var goto32: Bool = false
    @State var goto7: Bool = false
    var body: some View {
        VStack {
            Text("Page 24")
            Divider()
            VStack {
                Text("Ma,  Pa and Benny join you in the entrance.   ''Sorry about the sprinklers,'' says Pa.  ''Must've mixed them up with the volume control.''").padding()
                Text("You aren't listening. ''Let's figure this out,'' you say.  'A zombie virus or something has mutated the carrots.  Then the rabbits eat the carrots and become zombies bunnies.").padding()
                    Text("''But why did they run just now?''").padding()
                    }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto32 = true}, label: {Text("If you think the zombies are scared of water").font(.headline)})
                        .sheet(isPresented: $goto32, content: {
                           No32()
            })
            Divider().padding()
            Button(action: {self.goto7 = true}, label: {Text("Are the zombies scared of the song?").font(.headline)})
                        .sheet(isPresented: $goto7, content: {
                            No7()
            })
        }
    }
}

struct No24_Previews: PreviewProvider {
    static var previews: some View {
        No24()
    }
}
