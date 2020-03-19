//
//  No14.swift
//  ZombieBunnies
//
//  Created by steve groves on 08/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No14: View {
    @State var goto27: Bool = false
    @State var goto41: Bool = false
    var body: some View {
        VStack {
            Text("Page 14").padding(.horizontal)
            Divider()
            VStack {
                Text("The cinema is showing the latest zombie movie: Bunnyland, rated PG.  You look inside the building - there are no zombies. ").padding()
                Text("''Make sure they can't get in through the fire exits,'' you tell Ma and Pa.  ''Benny and I will go out and round up survivors.''").padding()
            }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto27 = true}, label: {Text("Do you want to use the loud-hailer").font(.headline)})
                .sheet(isPresented: $goto27, content: {
                   No27()
            })
            Divider().padding()
            Button(action: {self.goto41 = true}, label: {Text("Try the radio station").font(.headline)})
                .sheet(isPresented: $goto41, content: {
                   No41()
            })
        }
    }
}

struct No14_Previews: PreviewProvider {
    static var previews: some View {
        No14()
    }
}
