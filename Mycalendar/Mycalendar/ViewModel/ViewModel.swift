//
//  ViewModel.swift
//  Mycalendar
//
//  Created by ohhyeongseok on 2022/10/31.
//

import Foundation
import FSCalendar
class ViewModel: ObservableObject {
    var model = Model()
    
    var memoList: [String] {
        return model.memoList
    }
    var todoList: [String] {
        return model.todoList
    }
}
