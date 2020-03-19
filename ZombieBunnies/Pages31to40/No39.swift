//
//  No39.swift
//  ZombieBunnies
//
//  Created by steve groves on 10/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No39: View {
    @State var goto47: Bool = false
    @State var goto21: Bool = false
    @State var goto8: Bool = false
    var body: some View {
        VStack {
            Text("Page 39").padding(.horizontal)
            Divider()
            VStack {
                Text("You leave the townsfolk to celebrate.  They've been through enough today.  But you know the contaminated carrots come from Bad Seed Inc, and you have to make sure there aren't any more.").padding()
                Text("It's getting dark as you take the tractor and drive to the Bad Seed processing factory.  Looking through a window confirms your worst fears!  The building is seething with mutated fruit and veg: brutal broccoli, lethal leeks, killer cucmbers, savage sweetcorn and murderous melons, all tended by mindless zombie bunny slaves!!").padding()
            }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto47 = true}, label: {Text("Attack the vegetsbles and zombies?").font(.headline)})
                .sheet(isPresented: $goto47, content: {
                   No47()
            })
            Divider()
            Button(action: {self.goto21 = true}, label: {Text("Play ''Let it Grow'' on your phone.").font(.headline)})
                .sheet(isPresented: $goto21, content: {
                   No21()
            })
            Divider()
            Button(action: {self.goto8 = true}, label: {Text("If you want to play the song another way?").font(.headline)})
                .sheet(isPresented: $goto8, content: {
                   No8()
            })
        }
    }
}

struct No39_Previews: PreviewProvider {
    static var previews: some View {
        No39()
    }
}
