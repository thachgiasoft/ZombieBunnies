//
//  No6.swift
//  ZombieBunnies
//
//  Created by steve groves on 07/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No6: View {
    @State var goto17: Bool = false
    @State var goto29: Bool = false
    var body: some View {
        VStack {
            Text("Page 6").padding(.horizontal)
            Divider()
            VStack {
                Text("''Great pickled parsnips!'' you cry. ''I knew there was something wrong with that carrot! Look what it's done to Benny! It's turned him into a Zombie bunny!''").padding()
                Text("The zombie Benny bunny lurches towards you, making terrible grunting noises").padding()
            }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto17 = true}, label: {Text("To try and talk to Benny").font(.headline)})
                .sheet(isPresented: $goto17, content: {
                   No17()
            })
            Divider().padding()
            Button(action: {self.goto29 = true}, label: {Text("If you're rather run away").font(.headline)})
                .sheet(isPresented: $goto29, content: {
                   No29()
            })
        }
    }
}

struct No6_Previews: PreviewProvider {
    static var previews: some View {
        No6()
    }
}
