//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Cloud Secrets on 01/06/2022.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLable: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical ,4)
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if content != nil{
                    Text(content!)
                }else if (linkLable != nil && linkDestination != nil){
                    Link(linkLable!, destination:  URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                    
                }
                
                
                else {
                    EmptyView()
                }
            }
        
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "John / Jane")
            .previewLayout(.fixed(width: 275, height: 60))
            .padding()
    }
}
