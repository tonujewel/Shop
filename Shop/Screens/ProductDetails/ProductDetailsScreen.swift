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
    
    var body: some View{
        
        VStack{
            
            ZStack(alignment: .top){
                
                VStack{
                    Image("shoe_4" )
                        .resizable()
                        .frame(width:250,height: 150)
                       
                }
                .frame(height: 300)
                .padding(.top,40)
                
                HStack{
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("arrow.backward")
                            .resizable()
                            .frame(width: 20,height: 20)
                          //  .renderingMode(.original)
                            .padding()
                    }
                    .padding(.leading, 10)
                    .padding(.top, 20)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("cart")
                            .renderingMode(.template)
                            .padding()
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, self.height > 800 ? 15 : 10)
                    .background(Color.white)
                    .clipShape(CustomShape(corner: .bottomLeft, radii: self.height > 800 ? 35 : 30))
                }
                
            }
            .background( Color.yellow )
            .clipShape(CustomShape(corner: .bottomLeft, radii: 55))
            
            ScrollView(self.height > 800 ? .init() : .vertical, showsIndicators: false) {
                
                VStack{
                    
                    HStack{
                        
                        Text("Melodi Lamp")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            
                            Image("heart")
                                .renderingMode(.original)
                                .padding()
                        }
                        .background(Color.yellow )
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
                    
                    HStack(spacing: 10){
                        
                        Button(action: {
                            
                        }) {
                            
                            VStack{
                                
                                Image("mat1")
                                    .renderingMode(.original)
                                
                                Text("22 W")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            .padding()
                        }
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(12)
                        
                        Button(action: {
                            
                        }) {
                            
                            VStack{
                                
                                Image("mat2")
                                    .renderingMode(.original)
                                
                                Text("24 CM")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            .padding()
                        }
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(12)
                        
                        Button(action: {
                            
                        }) {
                            
                            VStack{
                                
                                Image("mat3")
                                    .renderingMode(.original)
                                
                                Text("26 CM")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            .padding()
                        }
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(12)
                        
                        Button(action: {
                            
                        }) {
                            
                            VStack{
                                
                                Image("mat4")
                                    .renderingMode(.original)
                                
                                Text("1.6 M")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            .padding()
                        }
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(12)
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 25)
                    
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
                        .foregroundColor(.black)
                        .padding(.vertical, 20)
                        .padding(.horizontal, 35)
                }
                .background(Color.yellow )
                .clipShape(CustomShape(corner: .topLeft, radii: 55))
                
            }
        }
        .edgesIgnoringSafeArea(.all)
        .statusBar(hidden: true)
       // .withAnima(.default)
    }
}

struct ProductDetailsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsScreen()
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
