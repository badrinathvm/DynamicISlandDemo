//
//  DynamicIslandWidgetLiveActivity.swift
//  DynamicIslandWidget
//
//  Created by Badarinath Venkatnarayansetty on 11/7/22.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct DynamicIslandWidgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: DynamicIslandWidgetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text(context.attributes.endDate, style: .timer)
                  .padding()
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)
            
        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Image(systemName: "timer")
            } minimal: {
                Image(systemName: "timer")
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}
