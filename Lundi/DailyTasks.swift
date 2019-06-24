//
//  dailyTasks.swift
//  Lundi
//
//  Created by Matthew Murray on 24/06/2019.
//  Copyright © 2019 Matthew Murray. All rights reserved.
//

import UIKit

class DailyTasks{
    var Day: String
    
    var Tasks: [String]
    
    init(Tasks: [String], Day: String) {
        self.Tasks = Tasks
        self.Day = Day
    }
}
