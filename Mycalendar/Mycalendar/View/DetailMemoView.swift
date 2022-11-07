//
//  DetailMemoView.swift
//  Mycalendar
//
//  Created by ohhyeongseok on 2022/10/31.
//

import SwiftUI

struct DetailMemoView: View {
    @State var title = ""
    @State var content = ""
    var body: some View {
        VStack(alignment: .leading) {
            HStack{Spacer()}
            Section {
                TextField("제목을 입력하세요", text: $title)
                    .padding(EdgeInsets(top: 0, leading: 5, bottom: 30, trailing: 5))
            }
            .border(.blue)
            .underline()
            TextField("내용을 입력하세요", text: $content)
                .padding(EdgeInsets(top: 10, leading: 5, bottom: 30, trailing: 5))
            Spacer()
        }
        .border(.green)
        .padding(10)
    }
}

struct DetailMemoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailMemoView()
    }
}
