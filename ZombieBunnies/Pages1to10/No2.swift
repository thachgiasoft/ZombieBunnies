//
//  No2.swift
//  ZombieBunnies
//
//  Created by steve groves on 09/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No2: View {
    @State var goto10: Bool = false
    var body: some View {
        VStack {
            Text("Page 2")
            Divider()
            VStack {
                Text("You put a cinema staff baseball cap on your head and pin on an employee's badge.  As soon as the zombies shamble in, you stop them.").padding()
                Text("''This film is PG rated,'' you tell them.  ''I need to see proof of your age.''").padding()
                Text("The zombie bunnies grunt and start looking in their pockets for some ID").font(.headline).padding()
                    }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto10 = true}, label: {Text("What next?").font(.headline)})
                        .sheet(isPresented: $goto10, content: {
                           No10()
            })
        }
    }
}

struct No2_Previews: PreviewProvider {
    static var previews: some View {
        No2()
    }
}
