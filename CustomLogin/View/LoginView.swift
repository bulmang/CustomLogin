//
//  LoginView.swift
//  CustomLogin
//
//  Created by 하명관 on 2022/10/07.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email:String = ""
    @State private var password:String = ""
    @State var isLinkActive = false
    
    var body: some View {
        NavigationView{
            VStack {
                
                CustomTextField(placeHolder: "아이디 또는 이메일",bColor: "textColor", value: $email)
                    

                CustomTextField(placeHolder: "비밀번호",bColor: "textColor", value: $password)
                    

                

                Button(action: {}, label: {
                    CustomButton(title: "로그인", bgColor: "Color1", fgColor: "Color2")
                })
                HStack(spacing: 15){
                    
                    NavigationLink(destination: FindIdView(), isActive: $isLinkActive){
                        Button(action: {
                            self.isLinkActive = true
                        }, label: {
                            Text("아이디 찾기")
                                .foregroundColor(.black)
                        })
                        
                    }

                    
                    Text("|")
                    
                    NavigationLink(destination: FindIdView(), isActive: $isLinkActive){
                        Button(action: {
                            self.isLinkActive = true
                        }, label: {
                            Text("비밀번호 찾기")
                                .foregroundColor(.black)
                        })
                        
                    }
                    
                }
                .opacity(0.6)
                Spacer()
                
                Button(action: {}, label: {
                    
                    Image("facebook")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20,height: 20)
                        .padding(.leading)
                    Text("페이스북으로 로그인")
                        .foregroundColor(.black)
                        .frame(height: 30)
                        .padding(.trailing)
                })
                .frame(minWidth: 0,maxWidth: .infinity)
                .border(Color(.black))
                .padding(.horizontal)
                
                Button(action: {}, label: {
                    
                    Image("google")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20,height: 20)
                        .padding(.leading)
                    Text("구글로 로그인")
                        .foregroundColor(.black)
                        .frame(height: 30)
                        .padding(.trailing)
                })
                .frame(minWidth: 0,maxWidth: .infinity)
                .border(Color(.black))
                .padding(.horizontal)
                Button(action: {}, label: {
                    
                    Image("apple")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20,height: 20)
                        .padding(.leading)
                    Text("Apple로 로그인")
                        .foregroundColor(.black)
                        .frame(height: 30)
                        .padding(.trailing)
                })
                .frame(minWidth: 0,maxWidth: .infinity)
                .border(Color(.black))
                .padding(.horizontal)
                HStack{
                    Text("혹시 배달의 민족이 처음이신가요?")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                    
                    Button(action: {}, label: {
                        Text("회원가입")
                            .foregroundColor(Color("Color1"))
                    })
                }
                
            }
        }

    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
