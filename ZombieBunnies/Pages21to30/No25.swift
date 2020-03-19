//
//  No25.swift
//  ZombieBunnies
//
//  Created by steve groves on 08/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No25: View {
    @State var goto4: Bool = false
    @State var goto11: Bool = false
    @State var goto35: Bool = false
    var body: some View {
        VStack {
            Text("Page 25").padding(.horizontal)
            Divider()
            VStack {
                Text("You run with Ma, Pa and Benny.  As soon as you have escaped the nearest zombie bunnies, you stop between a bicycle shop and your market stall.").padding()
                Text("Your eyes pop out of your head! On your stall, carrots are moving! They're growing stumpy legs, stumpy arms - and drooling mouths with gnashing teeth!").padding()
                Text("You gaze in horror. ''We need a plan,'' you say.").padding()
            }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto4 = true}, label: {Text("Do you want to destroy the carrots?").font(.headline)})
                .sheet(isPresented: $goto4, content: {
                   No4()
            })
            Divider()
            Button(action: {self.goto11 = true}, label: {Text("Take a bike and ride for help?").font(.headline)})
                .sheet(isPresented: $goto11, content: {
                   No11()
            })
            Divider()
            Button(action: {self.goto35 = true}, label: {Text("Escape in Ma & Pa's tractor?").font(.headline)})
                .sheet(isPresented: $goto35, content: {
                   No35()
            })
        }
    }
}

struct No25_Previews: PreviewProvider {
    static var previews: some View {
        No25()
    }
}
