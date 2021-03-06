//
//  modGameView.swift
//  armybuilder
//
//  Created by ted on 6/28/22.
//

import SwiftUI

struct modGameView: View {
    @State var id = Int()
    @State var mod: modification
    var body: some View {
        HStack{
        HStack{
        HStack(alignment: .center, spacing: nil){
            Group{
                Text("\(mod.range)").font(.title2).fontWeight(.bold).foregroundColor(.white).frame(maxWidth: 75, alignment: .center)
                Text("\(mod.type)").font(.title2).fontWeight(.bold).foregroundColor(.white).frame(maxWidth: 130, alignment: .center).multilineTextAlignment(.center)
                Text("\(mod.s)").font(.title2).fontWeight(.bold).foregroundColor(.white).frame(maxWidth: 60, alignment: .center)
                Text("\(mod.ap)").font(.title2).fontWeight(.bold).foregroundColor(.white).frame(maxWidth: 60, alignment: .center)
                Text("\(mod.d)").font(.title2).fontWeight(.bold).foregroundColor(.white).frame(maxWidth: 75, alignment: .center)
            

        }.padding()
        }.background(RoundedRectangle(cornerRadius: 10).fill(.mint)).padding()}
            Spacer()
            Text("\(mod.name)").fontWeight(.bold).multilineTextAlignment(.center).foregroundColor(.black).font(.title2).frame(maxWidth: 220, alignment: .trailing)
        }
    }
}

struct modGameView_Previews: PreviewProvider {
    static var previews: some View {
        modGameView(id: 0, mod: modification(name: "asd", range: "", type: "", s: "", ap: 0, d: "", pts: 0, count: 0))
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
