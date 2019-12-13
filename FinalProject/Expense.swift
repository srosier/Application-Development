//
//  Expense.swift
//  FinalProject
//
//  Created by Sami Rosier on 12/12/2019.
//  Copyright © 2019 Sami Rosier. All rights reserved.
//


import Foundation


class Expense: Hashable {
    
    let item: String
    let price: String
    let person: String
    
    init(item: String, price: String, person: String) {
        self.item = item
        self.price = price
        self.person = person
    }
    
    // Hashable
    func hash(into hasher: inout Hasher) {
        item.hash(into: &hasher)
    }
    
    // Equatable
    static func == (lhs: Expense, rhs: Expense) -> Bool {
        return lhs.item == rhs.item
    }
}

extension Expense: CustomStringConvertible {
    var description: String {
        return "Item: \(item), price: \(price)$, bought by: \(person)"
    }
    
}

