//
//  DataController.swift
//  SocialNetwork
//
//  Created by Anthony Cifre on 5/28/23.
//

import CoreData
import Foundation
import SwiftUI

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "FriendFace")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
