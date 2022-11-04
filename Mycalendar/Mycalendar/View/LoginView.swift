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
            
            Button("로그인") {
                //
            }
            .buttonStyle(LoginButtonStyle(color: .blue))
            
            Spacer()
            Button("카카오톡으로 로그인") {
                //
            }
            .buttonStyle(LoginButtonStyle(color: .yellow))
            Button("네이버로 로그인") {
                //
            }
            .buttonStyle(LoginButtonStyle(color: .green))
            
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
