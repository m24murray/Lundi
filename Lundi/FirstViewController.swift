//
//  FirstViewController.swift
//  Lundi
//
//  Created by Matthew Murray on 24/06/2019.
//  Copyright © 2019 Matthew Murray. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var tasksLists: [DailyTasks] = []

    // table view delegate methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected row \(indexPath.row) in section \(indexPath.section)")
    }
    
    // table view data source modules
    func numberOfSections(in tableView: UITableView) -> Int {
        return tasksLists.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return tasksLists[0].Tasks.count
        case 1:
            return tasksLists[1].Tasks.count
        case 2:
            return tasksLists[2].Tasks.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath)
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = tasksLists[0].Tasks[indexPath.row]
        case 1:
            cell.textLabel?.text = tasksLists[1].Tasks[indexPath.row]
        case 2:
            cell.textLabel?.text = tasksLists[2].Tasks[indexPath.row]
        default:
            cell.textLabel?.text = "This shouldn't happen"
        }
        
        cell.accessoryType = .checkmark
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return tasksLists[0].Day
        case 1:
            return tasksLists[1].Day
        case 2:
            return tasksLists[2].Day
        default:
            return nil
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Lundi"
        
        tasksLists.append(DailyTasks(Tasks:["5K run", "Work on iOS app"], Day: "Monday"))
        tasksLists.append(DailyTasks(Tasks:["Circuits", "Head into office"], Day: "Tuesday"))
        tasksLists.append(DailyTasks(Tasks:["Gig"], Day: "Wednesday"))
    }


}

