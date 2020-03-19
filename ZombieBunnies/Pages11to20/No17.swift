//
//  No17.swift
//  ZombieBunnies
//
//  Created by steve groves on 07/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No17: View {
    @State var goto1: Bool = false
    var body: some View {
        VStack {
            Text("Page 17")
            Divider()
            VStack {
                Text("''Benny!'' you cry. ''It's me! Your old pal!").padding()
                Text("But Benny doesn't hear you. He doesn't recognise you! He reaches out with grasping paws, and plunges his great big bucky teeth into your neck!").padding()
                Text("You feel like you've swallowed a whole bowl of hot spicy carrot soup all in one go.  You mind drains away like bathwater").padding()
                Text("You've been......ZOMBIFIED!!!!").font(.headline).padding()
                    }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto1 = true}, label: {Text("Go back to start").font(.headline)})
                        .sheet(isPresented: $goto1, content: {
                           No1()
            })
        }
    }
}

struct No17_Previews: PreviewProvider {
    static var previews: some View {
        No17()
    }
}
