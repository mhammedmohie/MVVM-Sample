//
//  User.swift
//  MVVM
//
//  Created by Mohammed ElGohary on 4/17/17.
//  Copyright © 2017 Mohammed ElGohary. All rights reserved.
//

import UIKit

class User: NSObject {
    var firstName:String?
    var lastName:String?
    var jobTitle:String?
    var avatar:String?

    init(carDic:Dictionary<String, Any>) {

        self.firstName = carDic["firstName"] as? String
        self.lastName = carDic["lastName"] as? String
        self.jobTitle = carDic["jobTitle"] as? String
        self.avatar = carDic["avatar"] as? String
    }
}
class UserViewModel {
    fileprivate var user: User

    init(user: User) {
        self.user = user
    }

    func userFullName() -> String {
        var firstName = ""
        if self.user.firstName != nil {
            firstName = self.user.firstName!
        }
        var lastName = ""
        if self.user.lastName != nil {
            lastName = self.user.lastName!
        }
        return "\(firstName) \(lastName)".trimmingCharacters(in: .whitespaces)
    }
    func jobTitle() -> String {
        guard (self.user.jobTitle != nil) else {
            return ""
        }
        return self.user.jobTitle!
    }
}
