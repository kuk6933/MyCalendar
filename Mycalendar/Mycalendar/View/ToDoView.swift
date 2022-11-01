//
//  ToDoView.swift
//  Mycalendar
//
//  Created by ohhyeongseok on 2022/10/31.
//

import SwiftUI

struct ToDoView: View {
    @State var isShownSheet = false
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Spacer()
                Button("➕") {
                    self.isShownSheet.toggle()
                }
                .padding(10)
            }
            .sheet(isPresented: $isShownSheet) {
                ToDoDetailView()
            }
            Spacer()
        }
    }
}

struct ToDoView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoView()
    }
}
