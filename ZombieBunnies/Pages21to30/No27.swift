//
//  No27.swift
//  ZombieBunnies
//
//  Created by steve groves on 09/03/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct No27: View {
    @State var goto5: Bool = false
     @State var goto43: Bool = false
     var body: some View {
         VStack {
             Text("Page 27").padding(.horizontal)
             Divider()
             VStack {
                 Text("You find a loud-hailer in the cinema managers office.  A few minutes later, you are back on the tractor.  You use the loud-hailer to tell survivors of the zombie plague to head for the cinema.").padding()
                 Text("Benny drives past the local school. The playground is full of zombie bunnies.  The kids are trapped on the first floor, calling for help.").padding()
                 Text("You groan. ''Those kids need help - but we have to pass on the messager to get everyone to the cinema before the zombies get them!").padding()
             }.frame(width: 380, height: 400, alignment: .leading)
             Divider().padding()
             Button(action: {self.goto5 = true}, label: {Text("Do you stay and help the kids").font(.headline)})
                 .sheet(isPresented: $goto5, content: {
                    No5()
             })
             Divider().padding()
             Button(action: {self.goto43 = true}, label: {Text("Are the other survivors is more important?").font(.headline)})
                 .sheet(isPresented: $goto43, content: {
                    No43()
             })
         }
    }
}

struct No27_Previews: PreviewProvider {
    static var previews: some View {
        No27()
    }
}
