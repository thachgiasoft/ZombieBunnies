//
//  No22.swift
//  ZombieBunnies
//
//  Created by steve groves on 09/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No22: View {
    @State var goto37: Bool = false
    var body: some View {
        VStack {
            Text("Page 22")
            Divider()
            VStack {
                Text("You run to the bouncy castle and drag it towards the school, knocking zombie bunnies out of the way as you go.").padding()
                Text("''Jump!'' you call").padding()
                Text("One by one, the kids jump onto the bouncy castle and over the fence, escaping the zombies.  As soon as they are safe, you lead them to the cinema.").padding()
                    }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto37 = true}, label: {Text("What next?").font(.headline)})
                        .sheet(isPresented: $goto37, content: {
                           No37()
            })
        }
    }
}

struct No22_Previews: PreviewProvider {
    static var previews: some View {
        No22()
    }
}
