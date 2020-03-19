//
//  No37.swift
//  ZombieBunnies
//
//  Created by steve groves on 09/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No37: View {
    @State var goto30: Bool = false
    @State var goto46: Bool = false
    var body: some View {
        VStack {
            Text("Page 37").padding(.horizontal)
            Divider()
            VStack {
                Text("The cinema is now packed with terrified townsfolk.").padding()
                Text("''I recon I've got the sound system working,''  POa tells you. ''I'll put some music on to cheer folk up, as soon as I can connect it to this here new-fangled smartphone...''").padding()
                Text("Ma runs in. ''There are zombie bunnies all around the cinema! And blood sucking carrots!  They're gonna break in...").padding()
            }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto30 = true}, label: {Text("Should you fight the zombie bunnies?").font(.headline)})
                .sheet(isPresented: $goto30, content: {
                   No30()
            })
            Divider().padding()
            Button(action: {self.goto46 = true}, label: {Text("Or try to tick them? ").font(.headline)})
                .sheet(isPresented: $goto46, content: {
                   No46()
            })
        }
    }
}

struct No37_Previews: PreviewProvider {
    static var previews: some View {
        No37()
    }
}
