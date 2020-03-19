//
//  No21.swift
//  ZombieBunnies
//
//  Created by steve groves on 10/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No21: View {
    @State var goto47: Bool = false
    @State var goto8: Bool = false
    var body: some View {
        VStack {
            Text("Page 21")
            Divider()
            VStack {
                Text("YOu play 'Let it Grow' on your phone, and burst into the factory.  Inside there is too much noiuse from the machinery processing the vegetables, and the zombie slaves can't hear the song.").padding()
                Text("The zombie workers turn to face you.  They smell fresh meat!!").padding()
                    }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto47 = true}, label: {Text("If you want to attack the zombies").font(.headline)})
                        .sheet(isPresented: $goto47, content: {
                           No47()
            })
            Divider().padding()
            Button(action: {self.goto8 = true}, label: {Text("Find a way to increase the song volume?").font(.headline)})
                        .sheet(isPresented: $goto8, content: {
                            No8()
            })
        }
    }
}

struct No21_Previews: PreviewProvider {
    static var previews: some View {
        No21()
    }
}
