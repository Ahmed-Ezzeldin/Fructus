//
//  OnboardingView.swift
//  Fructus
//
//  Created by Cloud Secrets on 31/05/2022.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){ item in
                FruitCardView(fruit: item)            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical , 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
            .previewDevice("iPhone 13")
    }
}
