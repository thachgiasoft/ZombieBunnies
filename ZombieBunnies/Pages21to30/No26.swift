//
//  No26.swift
//  ZombieBunnies
//
//  Created by steve groves on 11/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No26: View {
    @State var goto42: Bool = false
    @State var goto31: Bool = false
    var body: some View {
        VStack {
            Text("Page 26").padding(.horizontal)
            Divider()
            VStack {
                Text("You run to the tractor and grab the gun from where Pa made you dump it that morning.  You check it over.  It looks okay.").padding()
                Text("All you have to do is find somewhere to plug it in, wait a couple of minutes for it to charge, and ZAMMO!!").padding()
                Text("You look over at the factory.  Should you make a frontal assult through the main doors, or try and sneak in via the roof?").padding()
            }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto42 = true}, label: {Text("Use the main doors").font(.headline)})
                .sheet(isPresented: $goto42, content: {
                   No42()
            })
            Divider().padding()
            Button(action: {self.goto31 = true}, label: {Text("Do you want to sneak in?").font(.headline)})
                .sheet(isPresented: $goto31, content: {
                   No31()
            })
        }
    }
}

struct No26_Previews: PreviewProvider {
    static var previews: some View {
        No26()
    }
}
