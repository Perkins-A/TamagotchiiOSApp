//
//  ContentView.swift
//  TamagotchiiOSApp
//
//  Created by Perkins, Alexander (ABH) on 14/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var terry = Tamagotchi("Terry")
    var body: some View {
        Form {
            VStack(alignment: .leading, spacing: 10) {
                HStack() {
                    Text(terry.getName()).font(.title)
                }
                Text(terry.displayInfo())
            }
            Section() {
                Button("Feed \(terry.getName())", action:({
                    terry.eatSnack()
                }))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
