//
//  FlexibilityDemoApp.swift
//  FlexibilityDemo
//
//  Created by Abduqaxxor on 6/3/22.
//

import SwiftUI

@main
struct FlexibilityDemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
