//
//  No12.swift
//  ZombieBunnies
//
//  Created by steve groves on 07/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No12: View {
    @State var goto33: Bool = false
    var body: some View {
        VStack {
            Text("Page 12")
            Divider()
            VStack {
                Text("''I'm not sure, Benny. They look weird,'' you say.").padding()
                Text("''Awwww! Come on!'' says Benny. But when you turn your back, he grabs a carrot and bounds away.").padding()
                Text("Hey Benny! Bring that back! ypu cry. Benny pauses at the street corner and dangles the carrot. ''Come and get it!''").padding()
                    }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto33 = true}, label: {Text("What next?").font(.headline)})
                        .sheet(isPresented: $goto33, content: {
                           No33()
            })
        }
    }
}

struct No12_Previews: PreviewProvider {
    static var previews: some View {
        No12()
    }
}
