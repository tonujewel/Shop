//
//  PrimaryButton.swift
//  Shop
//
//  Created by Singularity - Jewel Rana on 16/11/22.
//



import SwiftUI

struct PrimaryButton: View {
    var title:String
    var body: some View {
        Text(title)
            .padding()
            .font(.title3.weight(.bold))
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(Color("PrimaryColor"))
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.08), radius: 60,x:0.0,y:16)
    }
}


struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(title: "Primary Button")
    }
}


