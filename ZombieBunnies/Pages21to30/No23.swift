//
//  No23.swift
//  ZombieBunnies
//
//  Created by steve groves on 07/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No23: View {
    @State var goto6: Bool = false
    var body: some View {
        VStack {
            Text("Page 23")
            Divider()
            VStack {
                Text("''Sure'' you say.").padding()
                Text("Benny takes one bite of the carrot - and gasps! He chokes. He crosses his eyes and clutches his troat!").padding()
                Text("He goes ''OOOH!'' and ''AARGH'' and ''YAGGAYAGGAYAGGAYEURCH!'' and smoke comes out of his ears!").padding()
                Text("When the smoke clears, you realise that something terrible has happened to Benny!").padding()
                    }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto6 = true}, label: {Text("What next?").font(.headline)})
                        .sheet(isPresented: $goto6, content: {
                           No6()
            })
        }
    }
}

struct No23_Previews: PreviewProvider {
    static var previews: some View {
        No23()
    }
}
