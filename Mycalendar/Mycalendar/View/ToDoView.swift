//
//  ToDoView.swift
//  Mycalendar
//
//  Created by ohhyeongseok on 2022/10/31.
//

import SwiftUI

struct ToDoView: View {
    @EnvironmentObject var viewModel: ViewModel
    @State var isShownSheet = false
    
    var body: some View {
        VStack {
            ZStack{
                List {
                    ForEach(viewModel.memoList, id: \.self) { content in
                        Button("📋\(content)") {
                            self.isShownSheet.toggle()
                        }
                        .sheet(isPresented: $isShownSheet) {
                            DetailMemoView() //메모 내용 호출
                        }
                    }
                }
                HStack {
                    Spacer()
                    VStack {
                        Spacer()
                        Button(action: { self.isShownSheet.toggle() }) {
                            Image(systemName: "plus.circle.fill")
                                .font(.system(size: 50))
                                .padding(20)
                        }
                    }
                }
                .border(.orange)
            }
        }
    }
}

struct ToDoView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoView()
    }
}
