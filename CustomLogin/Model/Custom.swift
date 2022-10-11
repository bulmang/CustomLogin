//
//  Custom.swift
//  CustomLogin
//
//  Created by 하명관 on 2022/10/07.
//

import SwiftUI

struct CustomButton: View {
    
    var title: String
    var bgColor: String
    var fgColor: String
    
    
    var body: some View {
        Button(action: {}, label: {
            Text(title)
                .fontWeight(.bold)
                .foregroundColor(Color(fgColor))
                .frame(height: 50)
                .frame(minWidth: 0,maxWidth: .infinity)
                .background(Color(bgColor))
                .cornerRadius(5)
                .padding()
        })
    }
}

struct CustomTextField: View{
    
    var placeHolder: String
    var bColor: String
    @Binding var value: String
    
    var body: some View{
        
        HStack{
            if placeHolder == "비밀번호" {
                ZStack(alignment: .leading) {
                    if value.isEmpty{
                        Text(placeHolder)
                            .foregroundColor(Color(bColor))
                            .opacity(0.6)
                            .padding(.leading,20)
                            .font(.system(size: 15))
                    }
                    SecureField("", text: $value)
                        .padding(.leading,20)
                        .font(.system(size: 15))
                        .frame(height: 35)
                }
            }
            else {
                ZStack(alignment: .leading) {
                    if value.isEmpty {
                        Text(placeHolder)
                            .foregroundColor(Color(bColor))
                            .opacity(0.6)
                            .padding(.leading,20)
                            .font(.system(size: 15))
                    }
                    TextField("", text: $value)
                        .padding(.leading,20)
                        .font(.system(size: 15))
                        .frame(height: 35)
                        .foregroundColor(Color(bColor))
                }
            }
        }
        .overlay(
            Divider()
                .overlay(
                    Color(bColor).opacity(0.6)
                ).padding(.horizontal,20)
            ,alignment: .bottom
        )

        
        
        
    }
}
