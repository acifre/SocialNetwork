//
//  SocialNetworkApp.swift
//  SocialNetwork
//
//  Created by Anthony Cifre on 5/25/23.
//

import SwiftUI

@main
struct SocialNetworkApp: App {
    
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
