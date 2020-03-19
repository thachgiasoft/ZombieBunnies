//
//  No38.swift
//  ZombieBunnies
//
//  Created by steve groves on 08/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No38: View {
    @State var goto1: Bool = false
    var body: some View {
        VStack {
            Text("Page 38")
            Divider()
            VStack {
                Text("You go in to the coffee shop and try to hide.").padding()
                Text("The hamster behind the counter calls, ''You want a coffee?'' But then, zombie Benny shambles in. The shop worker screams and runs.").padding()
                Text("You head to the back of the shop - but there is only one door out, and it's locked!").padding()
                Text("You're still wrestling with the door handle when you feel Benny's zombie teeth plunge into your shoulder and your brain turns to mush...").padding()
                Text("Oh dear, you've been......ZOMBIFIED!!!!").font(.headline)
                    }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto1 = true}, label: {Text("Go back to start").font(.headline)})
                        .sheet(isPresented: $goto1, content: {
                           No1()
            })
        }
    }
}

struct No38_Previews: PreviewProvider {
    static var previews: some View {
        No38()
    }
}
