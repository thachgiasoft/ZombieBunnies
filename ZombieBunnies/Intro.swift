//
//  Page1.swift
//  ZombieBunnies
//
//  Created by steve groves on 07/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct Intro: View {
    @State var goto1: Bool = false
    var body: some View {
        VStack {
            Text("Introduction").font(.headline)
            Divider()
            VStack {
                Text("You live in a small town. Your Ma and Pa grow vegetables for your rabbit friends and neighbours. They want you to help them run the farm, but you want to invent stuff like an amazing super fast freeze ray gun.").padding()
                Text("You've come into town in the tractor to help your Ma and Pa sell their crop at the market.").padding()
                Text("''Put that there gun contraption down!'' grumbles Pa. ''There ain't never gonna be no call for your dumb inventions!''").padding()
                Text("''But I thought we could freeze our vegetables...'' you protest.").padding()
                Text("''Hogwash!'' says Pa. ''Help me stack these here carrots.''").padding()
            }
            .frame(width: 380, height: 480, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto1 = true}, label: {Text("Start the game")})
                .sheet(isPresented: $goto1, content: {
                   No1()
            })
        }
    }
}

struct Intro_Previews: PreviewProvider {
    static var previews: some View {
        Intro()
    }
}
