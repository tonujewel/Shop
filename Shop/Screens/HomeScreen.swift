//
//  HomeScreen.swift
//  Shop
//
//  Created by Singularity - Jewel Rana on 16/11/22.
//

import SwiftUI

struct HomeScreen: View {
    
    @State var selectedCategory = categoryList[0]
    @Namespace var animation
    
    var body: some View {
        ZStack {
            Color("BgColor")
      
            VStack{
                ScrollView(.vertical,showsIndicators: false,content: {
                    VStack{
                        HStack{
                            Text("Men")
                                .font(.title.weight(.heavy))
                                .foregroundColor(.black)
                            Spacer()
                        }
                        .padding()
                        
                        ScrollView(.horizontal,showsIndicators: false, content: {
                            
                            HStack(spacing: 15){
                                ForEach(categoryList, id: \.self){ category in
                                    // Tab button
                                    CategoryItem(title: category, selectedTab: $selectedCategory,animation: animation)
                                }
                            }
                        })
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 0), count: 2),
                                  spacing: 0){
                            //
                            
                            ForEach(productList){product in
                                
                                ProductItem(productData: product)
                                    .padding()
                            }
                        }
                        
                    }
                })
            }
        }
      
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
