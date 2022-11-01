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
            Spacer()
            HStack(alignment: .top) {
                Spacer()
                Button(action: {
                    self.isShownSheet.toggle()
                }) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 50))
                    }
                }
                .padding(20)
            }
            .sheet(isPresented: $isShownSheet) {
                DetailToDoView()
            }
        }
    }
}

struct ToDoView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoView()
    }
}
