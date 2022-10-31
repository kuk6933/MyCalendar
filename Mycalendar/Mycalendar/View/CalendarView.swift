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
    let calendar = FSCalendar()
    func makeUIView(context: Context) -> FSCalendar {
        calendar.delegate = context.coordinator
        calendar.dataSource = context.coordinator
        configureUI()
        return calendar
    }
    
    func updateUIView(_ uiView: FSCalendar, context: Context) {}
    class Coordinator: NSObject, FSCalendarDelegate, FSCalendarDataSource {}
    
    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }
    
    func configureUI() {
        //Date 형식
        calendar.appearance.headerDateFormat = "YYYY년 MM월"
        //우리나라로
        calendar.locale = Locale(identifier: "ko_KR")
        //요일 날짜 색
        calendar.appearance.weekdayTextColor = .orange
        //평일 날짜 색
        calendar.appearance.titleDefaultColor = .black
        //주말 날짜 색
        calendar.appearance.titleWeekendColor = .red
        //선택 날짜
        calendar.appearance.borderSelectionColor = .systemPink
        //선택 날짜
        calendar.appearance.selectionColor = .systemPink
        //앞뒤 지우기
        calendar.appearance.headerMinimumDissolvedAlpha = 0.0
        //현재 날짜 색
        calendar.appearance.todayColor = .systemMint
        //2022년 10월 색깔
        calendar.appearance.headerTitleColor = .black
        // MARK: Todo// 일,토 색깔 커스텀, 다른 뷰들 만들기, 아래 바 만들기
    }
}
