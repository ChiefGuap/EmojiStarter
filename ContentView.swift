//
//  ContentView.swift
//  EmojiApp
//
//  Created by Raquib Alam on 6/22/23.
//

import SwiftUI

//list of cases of where you can pick and define from (String Variables)
//Case Iterable makes us able to loop through each item in the enum
enum Emoji: String, CaseIterable{
    case 👻, 😭, 🥶, 💪🏿
}

struct ContentView: View {
    // State and Binding are realted --> When something is updated or changed it will update
    @State var selection: Emoji = .🥶
    
    var body: some View {
        NavigationView {
            VStack {
                //rawValue --> String varaint of the emoji
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Select Emoji", selection: $selection){
                    ForEach(Emoji.allCases, id: \.self) { emoji in Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Scroll")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
