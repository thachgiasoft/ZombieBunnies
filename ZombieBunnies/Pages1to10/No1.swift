//
//  No1.swift
//  ZombieBunnies
//
//  Created by steve groves on 07/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No1: View {
    @State var goto23: Bool = false
    @State var goto12: Bool = false
    var body: some View {
        VStack {
            Text("Page 1").padding(.horizontal)
            Divider()
            VStack {
                Text("You look closely at the carrots as you stack them on the market stall.  ''These carrots look weird,'' you say. ''They're too big - and should they be glowing like this?''").padding()
                Text("''aww, sucks. Ain't nothing wrong with them carrots,'' says Pa. ''I picked 'em up cheap at Bad Seed Inc. They're gonna make our fortune!''").padding()
                Text("Your friend Benny Bunny stolls up. ''Hey, great looking carrots! Can I taste one?''").padding(.leading)
            }.frame(width: 380, height: 350, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto23 = true}, label: {Text("If you want to let Benny bunny try a carrot").font(.headline)
                })
                .sheet(isPresented: $goto23, content: {
                   No23()
            })
            Divider().padding()
            Button(action: {self.goto12 = true}, label: {Text("If you're not sure about the carrots").font(.headline)
                })
                .sheet(isPresented: $goto12, content: {
                   No12()
            })
        }
    }
}

struct No1_Previews: PreviewProvider {
    static var previews: some View {
        No1()
    }
}
