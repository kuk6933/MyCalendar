//
//  ContentView.swift
//  Mycalendar
//
//  Created by ohhyeongseok on 2022/10/28.
//

import SwiftUI
import FSCalendar

struct CalendarView: UIViewRepresentable {
    typealias UIViewType = FSCalendar
    func makeUIView(context: Context) -> FSCalendar {
        let calendar = FSCalendar()
        calendar.delegate = context.coordinator
        calendar.dataSource = context.coordinator
        return calendar
    }
    
    func updateUIView(_ uiView: FSCalendar, context: Context) {}
    class Coordinator: NSObject, FSCalendarDelegate, FSCalendarDataSource {}
    
    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }
    
    func configureUI() {
        
    }
}
