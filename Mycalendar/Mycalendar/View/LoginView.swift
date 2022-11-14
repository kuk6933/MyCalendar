//
//  LoginView.swift
//  Mycalendar
//
//  Created by ohhyeongseok on 2022/11/04.


import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack(alignment: .center) {
            HStack() {Spacer()}
            Label("MyCalendar", systemImage: "star.circle")
                .padding(20)
            TextField("이메일", text: $email)
                .textFieldStyle(.roundedBorder)
                .padding(10)
            TextField("비밀번호", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding(10)
            
            login
            Spacer()
            kakaoLogin
            naverLogin
            Spacer()
        }
    }
}

extension LoginView {
    
    var login: some View {
        Button("로그인") {
            //action
        }
        .buttonStyle(LoginButtonStyle(color: .blue))
    }
    var kakaoLogin: some View {
        Button {
            //action
        } label: {
            Label{
                Text("카카오로 로그인")
            } icon: {
                Image("kakaoIcon")
                    .resizable()
            }
            .labelStyle(MyLabelStyle())
        }
        .buttonStyle(LoginButtonStyle(color: .yellow))
    }
    var naverLogin: some View {
        Button {
            //action
        } label: {
            Label{
                Text("네이버로 로그인")
            } icon: {
                Image("naverIcon")
                    .resizable()
            }
            .labelStyle(MyLabelStyle())
        }
        .buttonStyle(LoginButtonStyle(color: .green))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
