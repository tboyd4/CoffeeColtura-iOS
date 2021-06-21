//
//  Coffee.swift
//  CoffeeColtura
//
//  Created by Tyler Boyd on 6/20/21.
//

import SwiftUI

struct Coffee: Identifiable {
    var id = UUID()
    var name: String
    var roast: String
    var brewDifficulty: String
    var goodnessRating: Int
}

#if DEBUG
var testCoffee = [
    Coffee(name: "Drip Coffee", roast: "Medium", brewDifficulty: "Easy", goodnessRating: 4),
    Coffee(name: "Espresso", roast: "Dark", brewDifficulty: "Less Easy", goodnessRating: 7),
    Coffee(name: "Latte", roast: "Medium", brewDifficulty: "Kinda Medium", goodnessRating: 9),
    Coffee(name: "Machiatto", roast: "Light", brewDifficulty: "Pretty Tough", goodnessRating: 8),
    Coffee(name: "Cold Brew", roast: "Medium", brewDifficulty: "Darn Easy", goodnessRating: 10),
]
#endif
