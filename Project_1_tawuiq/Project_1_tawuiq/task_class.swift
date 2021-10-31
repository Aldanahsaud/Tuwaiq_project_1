//
//  task_class.swift
//  Project_1_tawuiq
//
//  Created by AlDanah Aldohayan on 25/10/2021.
//

import Foundation

class Tasks {
    
     var name: String
     var desc: String
     var deadline: Date?
    
    
    init(_ name: String, _ desc: String, _ deadline: Date? ) {
        self.name = name
        self.desc = desc
        self.deadline = deadline
    }
     init(_ p: Tasks){
         self.name = p.name
         self.desc = p.desc
         self.deadline = p.deadline

    }
}
