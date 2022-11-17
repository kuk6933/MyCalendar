//
//  ToDoDetailView.swift
//  Mycalendar
//
//  Created by ohhyeongseok on 2022/11/01.
//

import SwiftUI

struct DetailToDoView: View {
    @State var title = ""
    @State var content = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{Spacer()}
            Section {
                TextField("제목을 입력하세요", text: $title)
                    .padding(EdgeInsets(top: 0, leading: 5, bottom: 30, trailing: 5))
                    .textFieldStyle(.roundedBorder)
            }
            TextField("내용을 입력하세요", text: $content)
                .padding(EdgeInsets(top: 10, leading: 5, bottom: 30, trailing: 5))
                .textFieldStyle(.roundedBorder)
            Spacer()
        }
        .padding(10)
    }
}

struct DetailToDoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailToDoView()
    }
}
