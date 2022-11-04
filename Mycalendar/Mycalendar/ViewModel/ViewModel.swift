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
    
    var calendar: FSCalendar {
        return Model.calendar
    }
    var memoList: [String] {
        return model.memoList
    }
}
