//
//  ProductModel.swift
//  Berdianalog
//
//  Created by Mochamad Dandi on 15/06/21.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    
    var formattedPrice: String { return "Rp. \(price)" }
}
