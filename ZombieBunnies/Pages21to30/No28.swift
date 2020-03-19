//
//  No28.swift
//  ZombieBunnies
//
//  Created by steve groves on 09/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No28: View {
    @State var goto49: Bool = false
    @State var goto3: Bool = false
    var body: some View {
        VStack {
            Text("Page 28").padding(.horizontal)
            Divider()
            VStack {
                Text("Half an hour later, you lead a company of courageous cavies down the main street of the town.  You are all carrying mobile phonbes playing 'Let it Grow'.").padding()
                Text("Zombies shamble behind you. Carrots run between their shambling feet.  They all want to bite you, but the song keeps them at a distance.").padding()
                Text("''It's working!'' says Benny.  ''Where do we lead them?''").padding()
            }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto49 = true}, label: {Text("Lead the zombies out of town").font(.headline)})
                .sheet(isPresented: $goto49, content: {
                   No49()
            })
            Divider().padding()
            Button(action: {self.goto3 = true}, label: {Text("Lead the zombies to the football stadium").font(.headline)})
                .sheet(isPresented: $goto3, content: {
                   No3()
            })
        }
    }
}

struct No28_Previews: PreviewProvider {
    static var previews: some View {
        No28()
    }
}
