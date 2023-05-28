//
//  CachedUser+CoreDataClass.swift
//  SocialNetwork
//
//  Created by Anthony Cifre on 5/27/23.
//
//

import Foundation
import CoreData

@objc(CachedUser)
public class CachedUser: NSManagedObject {
    
    enum CodingKeys: String, CodingKey {
        case id = "id", name = "name", isActive = "isActive", age = "age", company = "company", email = "email", address = "address", about = "about", registered = "registered", tags = "tags", friends = "friends"
    }
    
//    public func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(id, forKey: .id)
//        try container.encode(name, forKey: .name)
//        try container.encode(isActive, forKey: .isActive)
//        try container.encode(age, forKey: .age)
//        try container.encode(company, forKey: .company)
//        try container.encode(email, forKey: .email)
//        try container.encode(address, forKey: .address)
//        try container.encode(about, forKey: .about)
//        try container.encode(registered, forKey: .registered)
//        try container.encode(tags, forKey: .tags)
//        try container.encode(friendArray, forKey: .friends)
//    }

}
