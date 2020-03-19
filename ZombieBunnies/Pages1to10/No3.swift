//
//  No3.swift
//  ZombieBunnies
//
//  Created by steve groves on 10/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No3: View {
    @State var goto3a: Bool = false
    var body: some View {
        VStack {
            Text("Page 3").padding(.horizontal)
            Divider()
            VStack {
                Text("You lead the zombies into the football stadium.  You look up at the commentator's box, and are surprised to see your pa standing there!  He waves at you with a microphone in his hand.  While you were rounding up the zombies, he got here first.").padding()
                Text("Other townsfolk creep up behind the zombies and close all the gates.").padding(.leading)
                Text("You wave at Pa, and the national anthem blares out from the speakers.  The zombies look around, confused. Pa panics, presses a few buttons on the sound desk, and finally ''Let it Glow'' plays from every loudspeaker in the stadium!  Carrots collapse and zombies freak out!").padding()
            }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto3a = true}, label: {Text("What next").font(.headline)})
                .sheet(isPresented: $goto3a, content: {
                   No3a()
            })
        }
    }
}

struct No3_Previews: PreviewProvider {
    static var previews: some View {
        No3()
    }
}
