//
//  ContentView.swift
//  TamagotchiiOSApp
//
//  Created by Perkins, Alexander (ABH) on 14/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var terry = Tamagotchi("Terry")
    
    let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    @State var timeIdle = 0
    
    var body: some View {
        Form {
                VStack(alignment: .leading, spacing: 10) {
                    HStack() {
                        Text(terry.getName()).font(.title)
                    }
                    Text(terry.displayInfo())
                }
                Button("Feed \(terry.getName()) a snack", action:{
                    terry.eatSnack()
                    timeIdle = 0
                })
                Button("Feed \(terry.getName()) a meal", action:{
                    terry.eatMeal()
                    timeIdle = 0
                })
                Button("Give \(terry.getName()) medicine", action: {
                    terry.giveMedicine()
                    timeIdle = 0
                })
                if terry.isItAlive() == false {
                    Section{
                        Text("\(terry.getName()) has died of \(terry.checkIfAlive())")
                            .foregroundColor(.red)
                    }
                }
            }
            .onReceive(timer) { _ in
                terry.growUp()
                timeIdle += 1
                terry.becomeHungry()
                terry.checkIfAlive()
                if timeIdle >= 3 {
                    terry.becomeUnhappy()
                }
                if Int.random(in: 0..<20) == 0 {
                    terry.becomeSick()
                }
        }
    }
} 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
