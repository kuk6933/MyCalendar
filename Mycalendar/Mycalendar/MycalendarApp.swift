//
//  MycalendarApp.swift
//  Mycalendar
//
//  Created by ohhyeongseok on 2022/10/28.
//

import SwiftUI

@main
struct MycalendarApp: App {
    private static let viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(MycalendarApp.viewModel)
        }
    }
}
