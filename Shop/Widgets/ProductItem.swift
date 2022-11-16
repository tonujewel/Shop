//
//  ProductItem.swift
//  Shop
//
//  Created by Singularity - Jewel Rana on 16/11/22.
//

import SwiftUI

struct ProductItem: View {
    var productData : ProductDm
    
    var body: some View {
        ZStack {
            Color(.white)
            VStack(alignment: .leading, spacing: 6){
                ZStack{
                    Color("PrimaryColor")
                        .cornerRadius(15)
                    Image(productData.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                
                Text(productData.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.gray)
                
                Text(productData.price)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
            }
            .padding()
        }
        .cornerRadius(15)
       
        
    }
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductItem(productData: ProductDm(id: UUID().self, title: "Bag", tag: "tag", price: "$200", image: "shoe_0"))
    }
}
