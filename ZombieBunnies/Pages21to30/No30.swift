//
//  No30.swift
//  ZombieBunnies
//
//  Created by steve groves on 08/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No30: View {
    @State var goto1: Bool = false
    var body: some View {
        VStack {
            Text("Page 30")
            Divider()
            VStack {
                Text("When you get to your farm, Benny helps you and Ma and Pa close the shutters and lock the doors.  You move furniture to barricade every way in or out.").padding()
                Text("But you have barely finished before the zombie bunnies arrive in force!  They smash down your flimsy barricades.").padding()
                Text("There is nowhere to run, nowhere to hide.").padding()
                 HStack {
                        Text("You are... ZOMBIFIED!").font(.headline).padding(.horizontal)
                        Image("Zombie_bunny2")
                            .resizable()
                            .renderingMode(.original)
                            .padding(.horizontal)
                               }
                    }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto1 = true}, label: {Text("Go back to start").font(.headline)})
                        .sheet(isPresented: $goto1, content: {
                           No1()
            })
        }
    }
}

struct No30_Previews: PreviewProvider {
    static var previews: some View {
        No30()
    }
}
