//
//  ContentView.swift
//  Shop
//
//  Created by - Jewel Rana on 16/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var index = 0
    
    var body: some View {
        VStack {
            
            ZStack {
                ForEach(0 ..< onBoardItem.count, id: \.self) { i in
                    Text(onBoardItem[i].tag)
                        .font(.caption.weight(.bold))
                        .padding(.vertical,8)
                        .padding(.horizontal)
                        .background(onBoardItem[i].color)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                        .opacity(i == index ? 1 : 0)
                        .scaleEffect(i == index ? 1 : 0)
                        .animation(.easeInOut(duration: 0.4), value: i ==  index)
                }
            }
            
            
            TabView(selection: $index){
                ForEach(0 ..< 3) { i in
                    Image("shoe_\(i)")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            
            HStack(spacing: 4){
                ForEach(0 ..< 3) { i in
                    Color("PrimaryColor")
                        .opacity(i == index ? 1 : 0.5)
                        .frame(width: i == index ? 8 : 16,height: 8)
                        .animation(.easeOut(duration: 0.4), value: i == index)
                    
                }
            }
            
            ZStack {
                ForEach(0 ..< 3) { item in
                    VStack{
                        Text(onBoardItem[item].title)
                            .foregroundColor(.black)
                            .font(.largeTitle)
                        
                        Text(onBoardItem[item].desc)
                            .foregroundColor(.black)
                            .padding(.vertical,5)
                            .multilineTextAlignment(.center)
                        
                    }
                    .opacity(item == index ? 1 : 0)
                    .offset(CGSize(width: 0, height: item == index ? 0 : 100))
                    .animation(.easeInOut(duration: 0.4),value: item == index)
                }
            }
            
            PrimaryButton(title: "Get Started")
                .padding(.vertical)
            
            
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
