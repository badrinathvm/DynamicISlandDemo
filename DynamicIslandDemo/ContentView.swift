//
//  ContentView.swift
//  DynamicIslandDemo
//
//  Created by Badarinath Venkatnarayansetty on 11/7/22.
//

import SwiftUI
import ActivityKit

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                startActivity()
            } label: {
                Text("Start Activity")
                    .font(.title)
            }
        }
        .padding()
    }
    
    func startActivity() {
        guard ActivityAuthorizationInfo().areActivitiesEnabled else {
            print("Activities are not enabled.")
            return
        }
        Task {
            let attributes = DynamicIslandWidgetAttributes(endDate: Date().addingTimeInterval(60 * 60))
            let state = DynamicIslandWidgetAttributes.ContentState()
            do {
                try await MainActor.run {
                    let activity = try Activity<DynamicIslandWidgetAttributes>.request(
                        attributes: attributes,
                        contentState: state,
                        pushType: nil
                    )
                }
                print("Started Areas Activity")
            } catch (let error) {
                print("Error starting activity \(error) \(error.localizedDescription)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
