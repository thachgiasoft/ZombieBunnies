//
//  No36.swift
//  ZombieBunnies
//
//  Created by steve groves on 09/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No36: View {
    @State var goto15: Bool = false
    @State var goto26: Bool = false
    var body: some View {
        VStack {
            Text("Page 36").padding(.horizontal)
            Divider()
            VStack {
                Text("You think hard.").padding()
                Text("What if it's not the song itself that terrifies the zombies - what if it's something in the words?   The song is about freezing fruit and veg...  ''That's it!'' you cry. ''Cold! Cold destroys the mutation! That's why the ice cream worked on Benny!''").padding()
                Text("But, should you set the factory air-conditioning to low, and chill your foes that way? Or shold you EXPERIMENTAL and UNTRIED super fast-freeze ray gun that Pa says NEVER BE ANY GOOD TO ANYONE?").padding()
            }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto15 = true}, label: {Text("Use the air-con").font(.headline)})
                .sheet(isPresented: $goto15, content: {
                   No15()
            })
            Divider().padding()
            Button(action: {self.goto26 = true}, label: {Text("UIse the freeze ray-gun").font(.headline)})
                .sheet(isPresented: $goto26, content: {
                   No26()
            })
        }
    }
}

struct No36_Previews: PreviewProvider {
    static var previews: some View {
        No36()
    }
}
