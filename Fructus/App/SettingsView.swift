//
//  SettingsView.swift
//  Fructus
//
//  Created by Cloud Secrets on 01/06/2022.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical , showsIndicators: false){
                
                VStack (spacing: 20){
                    // MARK: - Section 1
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage:  "info.circle")
                    ){
                        Divider().padding(.vertical , 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80 , height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fet, sodium, and calories. None have cholesterol. Fruits are souces of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - Section 2
                    
                    
                    
                    // MARK: - Section 3
                    
                    
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems( trailing:
                                        Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                    
                }
                )
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}