//
//  CoffeeDetail.swift
//  CoffeeColtura
//
//  Created by Tyler Boyd on 6/20/21.
//

import SwiftUI

struct CoffeeDetail: View {
    var coffee: Coffee
    var body: some View {
        VStack {
            Image(systemName: "bolt.heart.fill")
            Text(coffee.name)
            Text("A \(coffee.roast) Roast")
                .font(.subheadline)
            Text("Goodness Rating: It's about \(coffee.goodnessRating) out of 10")
                .font(.subheadline)
                .foregroundColor(Color.gray)
            Text("Brew Difficulty: \(coffee.brewDifficulty)")
                .font(.subheadline)
                .foregroundColor(Color.gray)
        }
        .padding()
    }
}

struct CoffeeDetail_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeDetail(coffee: testCoffee[0])
    }
}
