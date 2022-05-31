//
//  FruitCardView.swift
//  Fructus
//
//  Created by Cloud Secrets on 31/05/2022.
//

import SwiftUI

struct FruitCardView: View {
    
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    
    
    var body: some View {
        ZStack {
            VStack{
                // Fruit Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0 , green: 0 , blue: 0 , opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // Fruit Title
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0 , green:  0 ,blue: 0 ,  opacity: 0.15), radius: 2, x: 2, y: 2)
                // Fruit Headline
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,  16)
                    .frame(maxWidth: 480)
                // Fruit Start
                StartButtonView()
            }//: VStack
        }//: ZStack
        .onAppear{
            withAnimation(.easeOut(duration: 1.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal , 20 )
        
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit:  fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
