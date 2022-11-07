//
//  DynamicIslandWidgetAttributes.swift
//  DynamicIslandDemo
//
//  Created by Badarinath Venkatnarayansetty on 11/7/22.
//

import Foundation
import ActivityKit

struct DynamicIslandWidgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
    }

    // Fixed non-changing properties about your activity go here!
    var endDate: Date
}
