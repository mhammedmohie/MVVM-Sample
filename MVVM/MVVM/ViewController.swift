//
//  ViewController.swift
//  MVVM
//
//  Created by Mohammed ElGohary on 4/13/17.
//  Copyright © 2017 Mohammed ElGohary. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!

    var users = [UserViewModel]()

    override func viewDidLoad() {
        super.viewDidLoad()

        if let path = Bundle.main.path(forResource: "users", ofType: "json") {
            do {
                let jsonData = try NSData(contentsOfFile: path, options: NSData.ReadingOptions.mappedIfSafe)
                do {
                    let jsonResult: NSDictionary = try JSONSerialization.jsonObject(with: jsonData as Data, options: JSONSerialization.ReadingOptions.mutableContainers) as! NSDictionary
                    if let people : [NSDictionary] = jsonResult["data"] as? [NSDictionary] {
                      users =  people.map({ (userDic:NSDictionary) -> UserViewModel in
                            return UserViewModel(user:  User(carDic: userDic as! Dictionary<String, Any>))
                        })
                        self.tableView.reloadData()
                    }
                } catch {
                    print("Error: Cannot parse the data in the JSON file")
                }
            } catch {
                print("Error: Cannot find The JSON file")
            }
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "userCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier) as! UserTableViewCell
        let userModel = users[indexPath.row]
        cell.userNameLBL.text = userModel.userFullName()
        cell.userTitleLBL.text = userModel.jobTitle()
        return cell
        
    }


}

