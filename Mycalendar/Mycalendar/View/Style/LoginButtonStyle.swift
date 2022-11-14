//
//  LoginButtonStyle.swift
//  Mycalendar
//
//  Created by ohhyeongseok on 2022/11/04.
//

import SwiftUI

struct LoginButtonStyle: ButtonStyle {
    let color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: UIScreen.main.bounds.size.width * 0.8,
                   maxHeight: UIScreen.main.bounds.size.height / 50,
                   alignment: .center)
            .font(.system(size: 15))
            .font(.title)
            .padding(10)
            .background(color)
            .cornerRadius(10)
            .foregroundColor(.white)
        
    }
}

//
//Button(action: {
//    AccountView()
//}) {
//    Text("카카오톡으로 로그인")
//        .frame(width: 300, height: 50, alignment: .center)
//        .background(.yellow)
//        .foregroundColor(.white)
//}
//.cornerRadius(10)
