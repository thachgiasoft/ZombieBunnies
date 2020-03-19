//
//  No7.swift
//  ZombieBunnies
//
//  Created by steve groves on 09/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No7: View {
    @State var goto45: Bool = false
    @State var goto28: Bool = false
    var body: some View {
        VStack {
            Text("Page 7").padding(.horizontal)
            Divider()
            VStack {
                Text("''I think the zombies are scared of the song - to be honest, it scares me a bit too!''").padding()
                Text("You leave your phone playing ''Let it grow'' through the cinema sound system, to keep the zombies away.  Benny also has the track, so you borrow his phone. ").padding()
                Text("You sneak up on a shambling zombie bunny, stick headphones into his ears, and play the song.  The zombies screams, writhes and goes floppy.  When the bunny picks herself up again she has changed back - no more zombie bunny! ").padding()
                Text("''What happened?'' she asks").padding(.leading)
            }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto45 = true}, label: {Text("Attack the zombies one by one").font(.headline)})
                .sheet(isPresented: $goto45, content: {
                   No45()
            })
            Divider().padding()
            Button(action: {self.goto28 = true}, label: {Text("Move quickly and deal with them all").font(.headline)})
                .sheet(isPresented: $goto28, content: {
                    No28()
            })
        }
    }
}

struct No7_Previews: PreviewProvider {
    static var previews: some View {
        No7()
    }
}
