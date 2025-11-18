//
//  HomeModel.swift
//  GMS
//
//  Created by Rohit SIngh Dhakad on 17/11/23.
//

import UIKit

import Foundation

class HomeModel: NSObject {
    
    var address: String
    var bonusGiven: Int
    var businessType: String
    var city: String
    var closeTime: String
    var code: String
    var country: String
    var details: String
    var dietary: [Dietary]
    var dietaryId: Int
    var distance: String
    var email: String
    var emailVerified: Int
    var entryDate: String
    var expiryDate: String
    var lat: String
    var liked: Int
    var likes: Int
    var lng: String
    var membershipId: Int
    var mobile: String
    var mobileVerified: Int
    var name: String
    var openTime: String
    var orderCount: Int
    var otp: String
    var password: String
    var postCode: String
    var rating: String
    var referBy: String?
    var registerId: String
    var review: Int
    var rewards: Int
    var socialId: String
    var socialType: String
    var status: Int
    var streetAddress: String
    var type: String
    var unitNumber: String
    var userId: Int
    var userImage: String

    init(from dictionary: [String: Any]) {
        if let value = dictionary["address"] as? String {
            address = value
        } else {
            address = ""
        }
        
        if let value = dictionary["bonus_given"] as? Int {
            bonusGiven = value
        } else {
            bonusGiven = 0
        }
        
        if let value = dictionary["business_type"] as? String {
            businessType = value
        } else {
            businessType = ""
        }
        
        if let value = dictionary["city"] as? String {
            city = value
        } else {
            city = ""
        }
        
        if let value = dictionary["close_time"] as? String {
            closeTime = value
        } else {
            closeTime = ""
        }
        
        if let value = dictionary["code"] as? String {
            code = value
        } else {
            code = ""
        }
        
        if let value = dictionary["country"] as? String {
            country = value
        } else {
            country = ""
        }
        
        if let value = dictionary["details"] as? String {
            details = value
        } else {
            details = ""
        }
        
        if let dietaryArray = dictionary["dietary"] as? [[String: Any]] {
            dietary = dietaryArray.map { Dietary(from: $0) }
        } else {
            dietary = []
        }
        
        if let value = dictionary["dietary_id"] as? Int {
            dietaryId = value
        } else {
            dietaryId = 0
        }
        
        if let value = dictionary["distance"] as? String {
            distance = value
        } else {
            distance = ""
        }
        
        if let value = dictionary["email"] as? String {
            email = value
        } else {
            email = ""
        }
        
        if let value = dictionary["email_verified"] as? Int {
            emailVerified = value
        } else {
            emailVerified = 0
        }
        
        if let value = dictionary["entrydt"] as? String {
            entryDate = value
        } else {
            entryDate = ""
        }
        
        if let value = dictionary["expiry_date"] as? String {
            expiryDate = value
        } else {
            expiryDate = ""
        }
        
        if let value = dictionary["lat"] as? String {
            lat = value
        } else {
            lat = ""
        }
        
        if let value = dictionary["liked"] as? Int {
            liked = value
        } else {
            liked = 0
        }
        
        if let value = dictionary["likes"] as? Int {
            likes = value
        } else {
            likes = 0
        }
        
        if let value = dictionary["lng"] as? String {
            lng = value
        } else {
            lng = ""
        }
        
        if let value = dictionary["membership_id"] as? Int {
            membershipId = value
        } else {
            membershipId = 0
        }
        
        if let value = dictionary["mobile"] as? String {
            mobile = value
        } else {
            mobile = ""
        }
        
        if let value = dictionary["mobile_verified"] as? Int {
            mobileVerified = value
        } else {
            mobileVerified = 0
        }
        
        if let value = dictionary["name"] as? String {
            name = value
        } else {
            name = ""
        }
        
        if let value = dictionary["open_time"] as? String {
            openTime = value
        } else {
            openTime = ""
        }
        
        if let value = dictionary["order_count"] as? Int {
            orderCount = value
        } else {
            orderCount = 0
        }
        
        if let value = dictionary["otp"] as? String {
            otp = value
        } else {
            otp = ""
        }
        
        if let value = dictionary["password"] as? String {
            password = value
        } else {
            password = ""
        }
        
        if let value = dictionary["post_code"] as? String {
            postCode = value
        } else {
            postCode = ""
        }
        
        if let value = dictionary["rating"] as? String {
            rating = value
        } else {
            rating = ""
        }
        
        if let value = dictionary["refer_by"] as? String {
            referBy = value
        } else {
            referBy = nil
        }
        
        if let value = dictionary["register_id"] as? String {
            registerId = value
        } else {
            registerId = ""
        }
        
        if let value = dictionary["review"] as? Int {
            review = value
        } else {
            review = 0
        }
        
        if let value = dictionary["rewards"] as? Int {
            rewards = value
        } else {
            rewards = 0
        }
        
        if let value = dictionary["social_id"] as? String {
            socialId = value
        } else {
            socialId = ""
        }
        
        if let value = dictionary["social_type"] as? String {
            socialType = value
        } else {
            socialType = ""
        }
        
        if let value = dictionary["status"] as? Int {
            status = value
        } else {
            status = 0
        }
        
        if let value = dictionary["street_address"] as? String {
            streetAddress = value
        } else {
            streetAddress = ""
        }
        
        if let value = dictionary["type"] as? String {
            type = value
        } else {
            type = ""
        }
        
        if let value = dictionary["unit_number"] as? String {
            unitNumber = value
        } else {
            unitNumber = ""
        }
        
        if let value = dictionary["user_id"] as? Int {
            userId = value
        } else {
            userId = 0
        }
        
        if let value = dictionary["user_image"] as? String {
            userImage = value
        } else {
            userImage = ""
        }
    }
}

class Dietary: NSObject {
    var dietaryId: Int
    var dietaryImage: String
    var dietaryName: String
    
    init(from dictionary: [String: Any]) {
        if let value = dictionary["dietary_id"] as? Int {
            dietaryId = value
        } else {
            dietaryId = 0
        }
        
        if let value = dictionary["dietary_image"] as? String {
            dietaryImage = value
        } else {
            dietaryImage = ""
        }
        
        if let value = dictionary["dietary_name"] as? String {
            dietaryName = value
        } else {
            dietaryName = ""
        }
    }
}
