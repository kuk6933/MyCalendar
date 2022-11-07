//
//  Model.swift
//  Mycalendar
//
//  Created by ohhyeongseok on 2022/10/31.
//

import Foundation
import FSCalendar

struct Model {
    var memoList = ["Memo1", "Memo2", "Memo3", "Memo4", "Memo5"]
    static let calendar = FSCalendar()
    init() {
        loadMemo()
    }
    
    func load() -> Data? {
        let fileNm: String = "memo"
        
        let extensionType = "json"
        
        guard let fileLocation = Bundle.main.url(forResource: fileNm, withExtension: extensionType) else { return nil }
        
        do {
            let data = try Data(contentsOf: fileLocation)
            return data
        } catch {
            return nil
        }
    }
    
    func loadMemo() {
        guard
            let jsonData = load(),
            let dictData = String(data: jsonData, encoding: .utf8)
        else {
            return
        }
        print("결과: \(dictData)")
    }
}

struct MemoList: Codable {
    let totalCount: Int
    let memos: [Memo]
}

struct Memo: Codable {
    let title: String
    let content: String
}
