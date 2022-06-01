//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Cloud Secrets on 01/06/2022.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical , showsIndicators: false)
            {
                VStack(alignment: .center, spacing:  20){
                    
                    FruitHeaderView(fruit: fruit)
                    
                    VStack (alignment: .leading, spacing: 20){
                        
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        FruitNutrientsView(fruit: fruit)
                        
                        Text("Learn more about \(fruit.title)")
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    }
                    .padding(.horizontal , 20)
                    //                    .frame(minWidth: 0,alignment: .center)
                }//: VStack
                .navigationBarTitle(fruit.title , displayMode: .inline)
                .navigationBarHidden(true)
            }//: ScrollView
            .edgesIgnoringSafeArea(.top)
        }//: NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
