//
//  ContentView.swift
//  Memorize
//
//  Created by Renan Luz on 07/08/20.
//  Copyright © 2020 Renan Luz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return  HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUp: false)
            }
        }
            .padding()
            .foregroundColor(Color.purple)
            .font(Font.largeTitle)
        
    }
}

struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("😈")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}












































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
