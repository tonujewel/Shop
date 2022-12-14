//
//  HomeDm.swift
//  Shop
//
//  Created by Singularity - Jewel Rana on 16/11/22.
//

import Foundation
import SwiftUI

struct ProductDm: Identifiable{
    let id: UUID
    let title: String
    let tag: String
    let price: String
    let image: String
}


var productList: [ProductDm] = [
    
    ProductDm(id: UUID(), title: "Vagabond", tag: "Footwear",price: "$ 200",image: "shoe_0" ),
    
    ProductDm(id: UUID(), title: "Apex", tag: "Footwear",price: "$ 200",image: "shoe_1"  ),
    
    ProductDm(id: UUID(), title: "Bata", tag: "Footwear",price: "$ 200",image: "shoe_2"  ),
    
    ProductDm(id: UUID(), title: "Vagabond", tag: "Footwear",price: "$ 200",image: "shoe_0" ),
    
    ProductDm(id: UUID(), title: "Apex", tag: "Footwear",price: "$ 200",image: "shoe_1"  ),
    
    ProductDm(id: UUID(), title: "Bata", tag: "Footwear",price: "$ 200",image: "shoe_2"  )
    
]


var categoryList = [
    "Hand bag", "Jewellery","Footwear","Dresses", "Beauty"
]

var sizeList = [
    "38", "40","42","43", "44"
]

var colorList = [
    Color.brown, Color.black, Color.gray
]
