//
//  No47.swift
//  ZombieBunnies
//
//  Created by steve groves on 09/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No47: View {
    @State var goto1: Bool = false
    var body: some View {
        VStack {
            Text("Page 47")
            Divider()
            VStack {
                Text("Howling a ninja guinea-pig challenge, you leap forward to attacked.").padding()
                Text("At first, your razor-sharp vegetable knives and peelers wreak havoc! Carrot-peeling litter the floor and tomato juice is splashed all over the walls.").padding()
                Text("But the vile vegetables fight back.  Their zombie slaves soon overpower you. In seconds, the fighting is over and you are...").padding()
                Text("ZOMBIFIED!!!!").font(.headline)
                    }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto1 = true}, label: {Text("Go back to start").font(.headline)})
                        .sheet(isPresented: $goto1, content: {
                           No1()
            })
        }
    }
}

struct No47_Previews: PreviewProvider {
    static var previews: some View {
        No47()
    }
}
