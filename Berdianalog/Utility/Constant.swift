//
//  Constant.swift
//  Berdianalog
//
//  Created by Mochamad Dandi on 14/06/21.
//

import SwiftUI

// DATA
let photographs: [Photograph] = Bundle.main.decode("photograph.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let SampleProduct: Product = products[0]

// COLOR

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}


// UX

let feedback = UIImpactFeedbackGenerator(style: .medium)


// API
// IMAGE
// FONT
// STRING
// MISC
