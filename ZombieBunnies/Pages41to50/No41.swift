//
//  No41.swift
//  ZombieBunnies
//
//  Created by steve groves on 09/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No41: View {
    @State var goto27: Bool = false
    @State var goto18: Bool = false
    var body: some View {
        VStack {
            Text("Page 41").padding(.horizontal)
            Divider()
            VStack {
                Text("You head to the radio studios of FARM FM, as you entre the control room, you see to your horror that the rabbit DJ is muttering gibberish and putting on tracks at random.").padding()
                Text("''Holy horseradish!'', you say. ''He's a mindless zombie!").padding()
                Text("''I listen to this show'', says Benny. ''He's always like that.").padding()
            }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto27 = true}, label: {Text("Change your mind and use the loud-hailer").font(.headline)})
                .sheet(isPresented: $goto27, content: {
                   No27()
            })
            Divider().padding()
            Button(action: {self.goto18 = true}, label: {Text("If you still want to send a radio message").font(.headline)})
                .sheet(isPresented: $goto18, content: {
                   No18()
            })
        }
    }
}

struct No41_Previews: PreviewProvider {
    static var previews: some View {
        No41()
    }
}
