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
    
    //ForEach로 받아오기
    var body: some View {
        List {
            ForEach(viewModel.memoList, id: \.self) { content in
                Button("📋\(content)") {
                    self.isShownSheet.toggle()
                }
                .sheet(isPresented: $isShownSheet) {
                    DetailMemoView()
                }
            }
        }
        .padding(10)
    }
}

struct MemoView_Previews: PreviewProvider {
    static var previews: some View {
        MemoView()
    }
}

//메모는 날짜와는 무관함 
