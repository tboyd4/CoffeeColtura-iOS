//
//  ContentView.swift
//  CoffeeColtura
//
//  Created by Tyler Boyd on 6/20/21.
//

import SwiftUI

struct ContentView: View {
    var coffees: [Coffee] = []
    
    var body: some View {
        NavigationView {
            List(coffees) { coffee in
                CoffeeCell(coffee: coffee)
            }
            .navigationTitle(Text("Coffee Coltura"))
        }
    }
}

struct CoffeeCell: View {
    var coffee: Coffee
    var body: some View {
        NavigationLink(destination: CoffeeDetail(coffee: coffee)) {
            Image(systemName: "bolt.heart.fill")
            VStack(alignment: .leading) {
                Text(coffee.name)
                Text("Roast Level: \(coffee.roast)")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(coffees: testCoffee)
    }
}


