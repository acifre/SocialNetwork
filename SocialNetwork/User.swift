//
//  Person.swift
//  SocialNetwork
//
//  Created by Anthony Cifre on 5/27/23.
//

import Foundation

enum CodingKeys: String, CodingKey {
    case id = "id", name = "name", isActive = "isActive", age = "age", company = "company", email = "email", address = "address", about = "about", registered = "registered", tags = "tags", friends = "friends"
}


struct User: Codable {
    
    struct Friend: Codable {
        var id: String
        var name: String
    }
    
    var id: String
    var isActive: Bool
    var name: String
    var age: Int
    var company: String
    var email: String
    var address: String
    var about: String
    var registered: Date?
    
    var tags: [String]
    
    var friends: [Friend]
    
    var formattedDate: Date {
        registered ?? Date.now
    }
}
