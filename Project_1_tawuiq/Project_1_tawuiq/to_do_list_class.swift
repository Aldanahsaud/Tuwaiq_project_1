//
//  to_do_list_class.swift
//  Project_1_tawuiq
//
//  Created by AlDanah Aldohayan on 25/10/2021.
//

import Foundation

class ToDoList {
     var tasks : [Tasks]
    

    init() {
        self.tasks = []
    }

    func creatingToDo(_ list: Tasks) {
        self.tasks.append(Tasks(list))
    }
    
    
    func printTodos(){
        var x = 1
        for t in tasks {
            print(x,")", t.name, t.desc, t.deadline ?? "No deadline")
            x += 1
        }
    }
    
    
    func selectAndUpdate(_ todo: Tasks, _ inedx: Int){
        tasks[inedx].name = todo.name
        tasks[inedx].desc = todo.desc
        tasks[inedx].deadline = todo.deadline
    }
    
    
    func removeTodoList(_ id: Int)  {
        tasks.remove(at: id)
        
    }
    
    func getDateFrom(_ dateString: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yy"
        dateFormatter.timeZone = .init(abbreviation: "GMT")
        guard let date = dateFormatter.date(from: dateString)
        else {
          return nil
        }
        return date
      }
    func reOrderAList(){
        tasks = tasks.sorted(by: { l1, l2 in
            if let fd = l1.deadline, let sd = l2.deadline {
                return fd < sd
            } else {
                return false
            }
        })
    }
    func reOrderAListFarest(){
        tasks = tasks.sorted(by: { l1, l2 in
            if let fd = l1.deadline, let sd = l2.deadline {
                return fd > sd
            } else {
                return false
            }
        })
    }

}




//    !!!BONUS!!!
    
   
