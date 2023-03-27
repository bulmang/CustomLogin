# 배달의 민족(LoginView) - ToyProject

![%EB%B0%B0%EB%AF%BC(LoginView)_Solo](https://user-images.githubusercontent.com/114594496/227922113-e7bde2ca-dc46-466a-a2de-c4e52413d2cd.gif)

## 앱 설명

- 배달의 민족 로그인 페이지를 클론코딩

# FindView

```swift

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
```


# LoginView

```swift
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
```

[View](%E1%84%87%E1%85%A2%E1%84%83%E1%85%A1%E1%86%AF%E1%84%8B%E1%85%B4%20%E1%84%86%E1%85%B5%E1%86%AB%E1%84%8C%E1%85%A9%E1%86%A8(LoginView)%200929b61ad0ea455eae80d40f8361a25e/View%204ef84ac1db1f492ca5846a8342e94ed4.md)


```swift
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
```
