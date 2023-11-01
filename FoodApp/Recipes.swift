//
//  Recipes.swift
//  FoodApp
//
//  Created by maks on 30.10.2023.
//

import Foundation


struct TypeDishes {
    let title : String
    let dishes: [String]
    
   static func getDihes() -> [TypeDishes] {
        [
            TypeDishes(title: "Суп", dishes: ["Солянка", "Борщ", "Том-Ям"]),
            TypeDishes(title: "Напитки", dishes: ["Водка", "Сок апельсин", "Вода"]),
            TypeDishes(title: "Горячее", dishes: ["Котлета", "Филе куры", "Картошка"])
        ]
    }
}

