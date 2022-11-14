//
//  MemoView.swift
//  Mycalendar
//
//  Created by ohhyeongseok on 2022/10/31.
//

import SwiftUI

struct MemoView: View {
    @EnvironmentObject var viewModel: ViewModel
    @State var isShownSheet = false
    
    var body: some View {
        VStack {
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
            .listStyle(DefaultListStyle())
            Spacer()
            HStack {
                Spacer()
                Button(action: { self.isShownSheet.toggle() }) {
                    Image(systemName: "plus.circle.fill")
                        .font(.system(size: 50))
                        .padding(5)
                }
            }
        }
    }

}
//
//struct MemoView_Previews: PreviewProvider {
//    static var previews: some View {
//        MemoView()
//    }
//}
