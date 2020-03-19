//
//  No40.swift
//  ZombieBunnies
//
//  Created by steve groves on 08/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No40: View {
     @State var goto30: Bool = false
     @State var goto14: Bool = false
     var body: some View {
         VStack {
             Text("Page 40").padding(.horizontal)
             Divider()
             VStack {
                 Text("You pull up outside the stadium and go in.  But there are already zombies on the field.  You realise the stadium has far too many entrances and exits to keep them out.").padding()
                 Text("''It's no good'', you say").padding()
             }.frame(width: 380, height: 400, alignment: .leading)
             Divider().padding()
             Button(action: {self.goto30 = true}, label: {Text("Go back to your farm").font(.headline)})
                 .sheet(isPresented: $goto30, content: {
                    No30()
             })
             Divider().padding()
             Button(action: {self.goto14 = true}, label: {Text("Try the cinema").font(.headline)})
                 .sheet(isPresented: $goto14, content: {
                    No14()
             })
         }
    }
}

struct No40_Previews: PreviewProvider {
    static var previews: some View {
        No40()
    }
}
