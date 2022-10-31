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
        VStack(alignment: .leading, spacing: 30) {
            HStack{
                Spacer()
            }
            ForEach(viewModel.memoList, id: \.self) { content in
                Button("📋\(content)") {
                    self.isShownSheet.toggle()
                }
                .sheet(isPresented: $isShownSheet) {
                    DetailMemoView()
                }
            }
            Spacer()
        }
        .border(.red)
        .padding(30)
    }
}

struct MemoView_Previews: PreviewProvider {
    static var previews: some View {
        MemoView()
    }
}
