//
//  No18.swift
//  ZombieBunnies
//
//  Created by steve groves on 08/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No18: View {
    @State var goto1: Bool = false
    var body: some View {
        VStack {
            Text("Page 18")
            Divider()
            VStack {
                Text("You burst into the radio studio and grab the microphone.  ''Hey, everyone!'' you cry, ''get into the cinema, it's the only safe place in - blub...burble...bibble...''").padding()
                Text("The reason you say this is the zombie DJ has just bitten your hand holding the microphone.").padding()
                Text("Tough luck - you've been......ZOMBIFIED!!!!").font(.headline).padding()
                    }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto1 = true}, label: {Text("Go back to start").font(.headline)})
                        .sheet(isPresented: $goto1, content: {
                           No1()
            })
        }
    }
}

struct No18_Previews: PreviewProvider {
    static var previews: some View {
        No18()
    }
}
