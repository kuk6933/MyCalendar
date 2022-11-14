//
//  LabelStyle.swift
//  Mycalendar
//
//  Created by ohhyeongseok on 2022/11/14.
//

import Foundation
import SwiftUI

struct MyLabelStyle: LabelStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        Label {
            configuration.title
        } icon: {
            configuration.icon
                .scaledToFit()
                .frame(width: 20, height: 20)
                .cornerRadius(10)
        }
    }
}
