//
//  ProductDetailsScreen.swift
//  Shop
//
//  Created by Singularity - Jewel Rana on 17/11/22.
//

import SwiftUI

struct ProductDetailsScreen: View {
    
    @Binding var productData : ProductDm
    @Binding var show: Bool
    
    var body: some View {
        
        
        VStack{
            
            VStack (alignment: .leading,spacing: 10){
                HStack{
                    Button(action:{
                        withAnimation(.easeInOut){
                            show.toggle()
                        }
                    }) {
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    Spacer()
                    Image(systemName: "cart")
                }
                
                Text("Aristocratic show")
                
                Text("Aristocratic show")
                    .font(.title.weight(.heavy))
                
            }
            .padding(10)
            
        }
        .background(Color("PrimaryColor"))
        .ignoresSafeArea(.all,edges: .top)
        .background(Color.white.ignoresSafeArea(.all,edges: .bottom))
        
    }
}

//struct ProductDetailsScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductDetailsScreen()
//    }
//}
