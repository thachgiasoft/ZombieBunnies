//
//  No34.swift
//  ZombieBunnies
//
//  Created by steve groves on 09/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No34: View {
    @State var goto1: Bool = false
    var body: some View {
        VStack {
            Text("Page 34")
            Divider()
            VStack {
                Text("You decide to use the fire engine ladder to rescue the kids.  You climb into the cab and try to swing the ladder towards the school.  But the controls are very complicated!").padding()
                Text("The ladder shoots out and spears a giant hot-dog sign from the roof of a drive-through resturant.").padding()
                Text("The commotion attracts the zombie bunnies, who drag you screaming from the cab.....you have been ZOMBIFIED!!!").font(.headline).padding()
                    }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto1 = true}, label: {Text("Go back to the start.").font(.headline)})
                        .sheet(isPresented: $goto1, content: {
                           No1()
            })
        }
    }
}

struct No34_Previews: PreviewProvider {
    static var previews: some View {
        No34()
    }
}
