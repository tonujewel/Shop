//
//  ProductDetailsScreen.swift
//  Shop
//
//  Created by Singularity - Jewel Rana on 17/11/22.
//

import SwiftUI

struct ProductDetailsScreen: View {
    @State var height = UIScreen.main.bounds.height
    @State var width = UIScreen.main.bounds.width
    
    @Environment(\.presentationMode) var presentationMode
    
    var productData : ProductDm
    
    var body: some View{
        
        ZStack {
            Color("BgColor")
                .ignoresSafeArea(.all)
            
            VStack{
                ScrollView {
                    
                    VStack{
                        
                        // top image
                          ImageSection(image: productData.image)
                        
                        // title and favorite button
                        HStack{
                            
                            Text(productData.title)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            Button(action: {
                                
                            }) {
                                
                                Image("heart")
                                    .renderingMode(.original)
                                    .padding()
                            }
                            .background(Color("PrimaryColor") )
                            .clipShape(Circle())
                            
                        }
                        .padding(.horizontal, 35)
                        .padding(.top,25)
                        
                        
                        Text("The lampshape provides directional lighting above the dining table and pleasant diffused light throught the room")
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                            .padding(.horizontal, 30)
                            .padding(.top,20)
                        
                        Spacer(minLength: 0)
                        
                        // Size
                        SizeSection()
                            .padding(.top,20)
                        
                        
                        
                        ColorSection()
                            .padding(.top,20)
                        
                        Spacer(minLength: 0)
                    }
                }
                HStack{
                    
                    Text("$12.99")
                        .foregroundColor(.black)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.leading, 35)
                        .padding(.bottom,25)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        
                        Text("Add to Cart")
                            .foregroundColor(.white)
                            .padding(.vertical, 20)
                            .padding(.horizontal, 35)
                        
                    }
                    .background(Color("PrimaryColor") )
                    .clipShape(CustomShape(corner: .topLeft, radii: 55))
                    
                }
            }
            .padding(.top,20)
            
        }
        .ignoresSafeArea(.all)
        
    }
}

struct ProductDetailsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsScreen(productData: ProductDm(id:UUID(), title: "String", tag: "", price: "200", image: "shoe_2"))
    }
}

struct CustomShape : Shape {
    
    var corner : UIRectCorner
    var radii : CGFloat
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radii, height: radii))
        
        return Path(path.cgPath)
    }
}

struct ImageSection: View {
    var image:String
    var body: some View {
        ZStack {
            VStack{
                Image(image)
                    .resizable()
            }
            .frame(height: 300)
            .padding()
            .background(Color.white)
            .cornerRadius(20)
        }
        .padding(20)
    }
}

struct SizeItem: View {
    var size:String
    var body: some View {
        VStack{
            Text(size)
                .fontWeight(.bold)
                .foregroundColor(.black)
        }
        .padding()
        .background(Color.black.opacity(0.06))
        .cornerRadius(12)
    }
}

struct SizeSection: View {
    var body: some View {
        VStack {
            HStack {
                Text("Size")
                    .font(.title)
                
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Spacer()
            }
            
            ScrollView(.horizontal,showsIndicators: false, content: {
                
                HStack(spacing: 15){
                    ForEach(sizeList, id: \.self){ size in
                        // Tab button
                        SizeItem(size: size)
                    }
                }
            })
        }
        .padding(.horizontal, 30)
    }
}

struct ColorSection: View {
    var body: some View {
        VStack {
            HStack {
                Text("Color")
                    .font(.title)
                
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Spacer()
            }
            
            ScrollView(.horizontal,showsIndicators: false, content: {
                
                HStack(spacing: 15){
                    ForEach(colorList, id: \.self){ colorItem in
                        
                        
                        Circle()
                            .strokeBorder(Color.green,lineWidth: 2)
                            .background(Circle().foregroundColor(colorItem))
                            .frame(width: 50,height: 50)
                        
                        
                    }
                }
            })
        }
        .padding(.horizontal, 30)
    }
}
