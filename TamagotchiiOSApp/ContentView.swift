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
            Button("Feed \(terry.getName()) a snack", action:({
                terry.eatSnack()
            }))
            Button("Feed \(terry.getName()) a meal", action:({
                terry.eatMeal()
            }))
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
