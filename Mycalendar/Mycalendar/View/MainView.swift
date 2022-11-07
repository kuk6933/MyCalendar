//
//  MainView.swift
//  Mycalendar
//
//  Created by ohhyeongseok on 2022/10/31.
//

import SwiftUI

struct MainView: View {
    @State var selection = 4
    var body: some View {
        TabView(selection: $selection) {
            CalendarView()
                .tabItem {
                    Label("캘린더", systemImage: "calendar")
                }
                .tag(1)
            ToDoView()
                .tabItem {
                    Label("할일", systemImage: "pencil")
                }
                .tag(2)
            MemoView()
                .tabItem {
                    Label("매모", systemImage: "note")
                }
                .tag(3)
            LoginView()
                .tabItem {
                    Label("계정", systemImage: "person.crop.circle.fill")
                }
                .tag(4)
        }
        .accentColor(.green)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

// MARK: Todo// todoView,
