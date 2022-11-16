//
//  CategoryItem.swift
//  Shop
//
//  Created by Singularity - Jewel Rana on 16/11/22.
//

import SwiftUI

struct CategoryItem: View {
    
    var title: String
    @Binding var selectedTab: String
    
    var animation: Namespace.ID
    
    
    var body: some View {
        
        
       Button(action: {
           withAnimation(.spring()){selectedTab = title}
       }, label: {
           
           VStack( alignment: .leading,spacing: 6, content:
            {
               
               Text(title)
                   .fontWeight(.heavy)
                   .foregroundColor(selectedTab == title ? .black : .gray)
               
               if( selectedTab == title){
                   Capsule()
                       .fill(Color.black)
                       .frame(width: 40,height: 4, alignment: .center)
                       .matchedGeometryEffect(id: "Tab", in: animation)
               }
           })
           .frame(width: 100)
       })
    }
}

//struct CategoryItem_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryItem(title: "Jewel", selectedTab: "Jewel")
//    }
//}
