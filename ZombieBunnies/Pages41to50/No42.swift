//
//  No42.swift
//  ZombieBunnies
//
//  Created by steve groves on 09/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No42: View {
    @State var goto1: Bool = false
    var body: some View {
        VStack {
            Text("Page 42")
            Divider()
            VStack {
                Text("You burst in through the doors. Quickly, you plug in the ray gun. It whines as it starts to charge.").padding()
                Text("You laugh ''Cool!'' You point the gun and pull the trigger.").padding()
                Text("Nothing happens. You shake the gun. ''Er...''").padding()
                Text("Too late you remember that the gun takes two minutes to charge - and you haven't got two minutes.").padding()
                Text("The factory echos to youir shrieks as you are....").padding()
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

struct No42_Previews: PreviewProvider {
    static var previews: some View {
        No42()
    }
}
