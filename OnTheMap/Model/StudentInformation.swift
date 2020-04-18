//
//  StudentInformation.swift
//  OnTheMap
//
//  Created by Mattia Sanfilippo on 18/04/2020.
//  Copyright © 2020 Mattia Sanfilippo. All rights reserved.
//

import Foundation

struct StudentInformation: Codable {
    let createdAt: String?
    let firstName: String
    let lastName: String
    let latitude: Double?
    let longitude: Double?
    let mapString: String?
    let mediaURL: String?
    let objectId: String?
    let uniqueKey: String?
    let updatedAt: String?
    
    init(_ dictionary: [String: AnyObject]) {
        self.createdAt = dictionary["createdAt"] as? String
        self.uniqueKey = dictionary["uniqueKey"] as? String ?? ""
        self.firstName = dictionary["firstName"] as? String ?? ""
        self.lastName = dictionary["lastName"] as? String ?? ""
        self.mapString = dictionary["mapString"] as? String ?? ""
        self.mediaURL = dictionary["mediaURL"] as? String ?? ""
        self.latitude = dictionary["latitude"] as? Double ?? 0.0
        self.longitude = dictionary["longitude"] as? Double ?? 0.0
        self.objectId = dictionary["objectId"] as? String
        self.updatedAt = dictionary["updatedAt"] as? String
    }
    
    var labelName: String {
        var name = ""
        if !firstName.isEmpty {
            name = firstName
        }
        if !lastName.isEmpty {
            name = lastName
        } else {
            name += " \(lastName)"
        }
        if name.isEmpty {
            name = "FirstName LastName"
        }
        return name
    }
}
