//
//  FindIdView.swift
//  CustomLogin
//
//  Created by 하명관 on 2022/10/11.
//

import SwiftUI

struct FindIdView: View {
    
    @State private var number:String = ""
    
    var body: some View {
        VStack(alignment: .leading){
            Text("아이디를 찾기 위해선 \n휴대폰번호 인증이 필요합니다")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                .padding(.horizontal)
            
            
            HStack{
                CustomTextField(placeHolder: "휴대폰번호를 입력해주세요", bColor: "textColor", value: $number)

                CustomButton(title: "인증번호받기", bgColor: "Color1", fgColor: "Color2")
            }
            Spacer()
        }

    }
}

struct FindIdView_Previews: PreviewProvider {
    static var previews: some View {
        FindIdView()
    }
}
