//
//  No13.swift
//  ZombieBunnies
//
//  Created by steve groves on 09/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No13: View {
    @State var goto1: Bool = false
    var body: some View {
        VStack {
            Text("Page 13")
            Divider()
            VStack {
                Text("You accept the congratulations from the townsfolk and go home with Ma and Pa.").padding()
                Text("But that night, you hear creaking and groaning noises all over the house.  You open your eyes and turn the lights on.  Your bedroom is full of bloodthursty carrots and zombie bunnies. ").padding()
                Text("''It's just a nightmare, right?''  you squeak.")
                Text("WRONG!!").padding()
                Text("Slavering carrots and bunnies pounce....you have been ZOMBIFIED!!!!").font(.headline)
                    }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto1 = true}, label: {Text("Go back to start").font(.headline)})
                        .sheet(isPresented: $goto1, content: {
                           No1()
            })
        }
    }
}

struct No13_Previews: PreviewProvider {
    static var previews: some View {
        No13()
    }
}
