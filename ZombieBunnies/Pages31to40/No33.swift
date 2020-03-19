//
//  No33.swift
//  ZombieBunnies
//
//  Created by steve groves on 07/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No33: View {
    @State var goto6: Bool = false
    var body: some View {
        VStack {
            Text("Page 33")
            Divider()
            VStack {
                Text("Benny disappears around the corner, and shortly afterwards you hear a terrible racket from around the corner - screams and horrible grisly noises and lots of smoke").padding()
                Text("Then you hear yells of terror. Panicking townsfolk run around the corner. And lurching after them comes...").padding()
                Text("Zombie Benny bunny!!!!").font(.headline).padding()
                    }.frame(width: 380, height: 400, alignment: .leading)
            Divider().padding()
            Button(action: {self.goto6 = true}, label: {Text("What next?").font(.headline)})
                        .sheet(isPresented: $goto6, content: {
                           No6()
            })
        }
    }
}

struct No33_Previews: PreviewProvider {
    static var previews: some View {
        No33()
    }
}
