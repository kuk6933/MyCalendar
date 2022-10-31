//
//  MemoView.swift
//  Mycalendar
//
//  Created by ohhyeongseok on 2022/10/31.
//

import SwiftUI

struct MemoView: View {
    @State var isShownSheet = false
    
    var body: some View {
        VStack {
            Button("Memo") {
                self.isShownSheet.toggle()
            }
            .sheet(isPresented: $isShownSheet) {
                Text("sheet view")
            }
        }
    }
}

struct MemoView_Previews: PreviewProvider {
    static var previews: some View {
        MemoView()
    }
}
