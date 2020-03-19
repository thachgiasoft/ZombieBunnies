//
//  No10.swift
//  ZombieBunnies
//
//  Created by steve groves on 09/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No10: View {
    @State var goto19: Bool = false
    @State var goto24: Bool = false
    var body: some View {
        VStack {
            Text("Page 10").padding(.horizontal)
            VStack {
                Text("Just then, water rains down from the ceiling.  Someone has activated the fire protection sprinkler system. ").padding()
                Text("At that moment, Pa gets the sound system working. It plays the latest hit from Elsie Eggplant and Farmhands:").padding()
                Text("  Let it grow, let it grow,")
                Text("  Don't fertilize it anymore!")
                Text("  Let it grow, let it grow,")
                Text("  The stick it in the cooler and slams the door.")
                Text("  Frozen vet, and fruit sorbet,")
                Text("  Let the peas freeze on,")
                Text("  'Cos green don't appeal to me anyway.")
            }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto19 = true}, label: {Text("If you want to chase the zombies?").font(.headline)})
                .sheet(isPresented: $goto19, content: {
                   No19()
            })
            Divider().padding()
            Button(action: {self.goto24 = true}, label: {Text("To think about what just happened?").font(.headline)})
                .sheet(isPresented: $goto24, content: {
                   No24()
            })
        }
    }
}

struct No10_Previews: PreviewProvider {
    static var previews: some View {
        No10()
    }
}
