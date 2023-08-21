//
//  ContentView.swift
//  Dice
//
//  Created by Anna Gutowska on 8/20/23.
//

import SwiftUI

struct ContentView: View {
    @State var diceNumber = Int.random(in: 1...6)
    var body: some View {
        VStack(spacing: 20.0) {
            Image("dice-\(diceNumber)")
                .hoverEffect()
                        .onTapGesture {
                            diceNumber = Int.random(in: 1...6)
                        }
            
            Text("You rolled a \(diceNumber)!").font(.largeTitle).foregroundColor(Color.blue)
            Button {
                diceNumber = Int.random(in: 1...6)
            } label: {
                Text("ROLL AGAIN")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding(20)
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            .controlSize(.small)


            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
