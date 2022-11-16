//
//  OnBoard.swift
//  Shop
//
//  Created by Singularity - Jewel Rana on 16/11/22.
//

import Foundation
import SwiftUI

struct OnBoard: Identifiable{
    let id: UUID
    let title: String
    let desc: String
    let tag: String
    let color: Color
    
}


var onBoardItem: [OnBoard] = [
    
    OnBoard(id: UUID(), title: "Vagabond", desc: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout", tag: "Footwear", color: Color(hex: 0x000000)),
    
    OnBoard(id: UUID(), title: "Apex", desc: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look", tag: "Footwear", color: Color(.gray)),
    
    OnBoard(id: UUID(), title: "Bata", desc: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.", tag: "Footwear", color: Color(.black))
    
]
