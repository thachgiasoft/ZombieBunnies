//
//  No8.swift
//  ZombieBunnies
//
//  Created by steve groves on 09/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No8: View {
    @State var goto47: Bool = false
    @State var goto36: Bool = false
    var body: some View {
        VStack {
            Text("Page 8").padding(.horizontal)
            Divider()
            VStack {
                Text("You look up and see a control booth overlooking the factory floor.  There are speakers in the factory for making staff announcments.  They must be controlled from there! If you can just reach the sound system and plug your phone into it...").padding()
                Text("But there are dozens of zombies and hordes of vicious veg between you and the booth!").padding()
            }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto47 = true}, label: {Text("Do you want to attack the zombies and vegetables").font(.headline)})
                .sheet(isPresented: $goto47, content: {
                   No47()
            })
            Divider().padding()
            Button(action: {self.goto36 = true}, label: {Text("Take some time to think").font(.headline)})
                .sheet(isPresented: $goto36, content: {
                   No36()
            })
        }
    }
}

struct No8_Previews: PreviewProvider {
    static var previews: some View {
        No8()
    }
}
