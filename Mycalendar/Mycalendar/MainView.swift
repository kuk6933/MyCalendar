//
//  MainView.swift
//  Mycalendar
//
//  Created by ohhyeongseok on 2022/10/31.
//

import SwiftUI

struct MainView: View {
    @State var selection = 1
    var body: some View {
        TabView(selection: $selection) {
            MainView()
                .badge(2)
                .tabItem {
                    Label("Calendar", systemImage: "calendar")
                }
                .tag(1)
            ToDoView()
                .tabItem {
                    Label("ToDo", systemImage: "pencil")
                }
                .tag(2)
            AccountView()
                .badge(1)
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
                .tag(3)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
