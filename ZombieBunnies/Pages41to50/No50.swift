//
//  No50.swift
//  ZombieBunnies
//
//  Created by steve groves on 11/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No50: View {
    @State var goto0: Bool = false
    var body: some View {
        VStack {
            Text("Page 50")
            Divider()
            VStack {
                Text("The townsfolk are still celebrating as you return.").padding()
                Text("Pa slaps you on the back.  ''I'm proud of you!  I never thought I'd be glad you got yourself a college education.'' He takes a bite of a carrot. Seeing your expression, he laughs.  ''Don't worry.  These here veg are harmless now.  We've been eatin' them all evening.''  He sighs.").padding()
                Text("''Mind you, I reckon I've had my fill of carrots for a while.  I think I'll get into potatoes.").padding()
                Text("''I got some from Bad Seed Inc too.'' He draps a potato into your paws. ''What do you think of that?''").padding()
                Text("You stare at the potato. ''It's got eyes.'' ").padding()
                Text("Pa shrugs. ''All potatoes have eyes.").padding()
                Text("''yes, but these eyes are open and it's LOOKING at me!''").padding()
                    }.frame(width: 380, height: 500, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto0 = true}, label: {Text("The end").font(.headline)})
                        .sheet(isPresented: $goto0, content: {
                           ContentView()
            })
        }
    }
}

struct No50_Previews: PreviewProvider {
    static var previews: some View {
        No50()
    }
}
