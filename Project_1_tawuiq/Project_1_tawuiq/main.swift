//
//  main.swift
//  Project_1_tawuiq
//
//  Created by AlDanah Aldohayan on 21/10/2021.
//

import Foundation


print("Enter your pretty name👩🏻/👨🏻: ", terminator: "")
let name = Utils.readString()
var obj1 = ToDoList()

print("Enter any number from 1 to start a list 🐧: ", terminator: "")
let number = Int(readLine() ?? "") ?? 0
if number == 0 {
    print("invalid")
    
}

while number != 0 {
    print("what you wanna do? ENTER (1) print (2) add (3)update (4) remove,(5) for sorting by nearest dete, (6) for sorting by the farest date(0) for exiting this list: ", terminator: "")
    let enter1 = Int(readLine() ?? "") ?? 00
    if enter1 == 00 {
        print("invalid")
        
    }
    
    switch enter1{
    case 1:
        print("List of \(name)🎋:")
        obj1.printTodos()
    case 2:
        print("* What is your task's Name ↓: ", terminator: "")
        let enteredName = Utils.readString()
        print("* What is your task's Description ↓: ", terminator: "")
        let enteredDesc = Utils.readString()
        print("What is your task's deadline، please enter date in this format dd/MM/yy ↓: ", terminator: "")
        let enteredDeadline = Utils.readString()
        let date = obj1.getDateFrom(enteredDeadline)
        let taskk = Tasks(enteredName, enteredDesc, date)
        obj1.creatingToDo(taskk)
    case 3:
        print("What is your task's number that you want to update 🛠: ", terminator: "")
        let updateIndex = Utils.readInt()
        let upIn = updateIndex - 1
        
        print("Enter new task's name: ", terminator: "")
        let updateName = Utils.readString()
        print("Enter new task's description: ", terminator: "")
        let updateDesc = Utils.readString()
        
        print("Enter new task's date: ", terminator: "")
        let updateDate = Utils.readString()
        let date = obj1.getDateFrom(updateDate)
        let classUpdate = Tasks(updateName, updateDesc, date)
        
        obj1.selectAndUpdate(classUpdate, upIn)
    case 4:
        print("What is your task's number that you want to remove ❌: ", terminator: "")
        let removeUpdate = Utils.readInt()
        let reIn = removeUpdate - 1
        obj1.removeTodoList(reIn)
    case 5:
        obj1.reOrderAList()
        obj1.printTodos()
    case 6:
        obj1.reOrderAListFarest()
        obj1.printTodos()
    case 0:
        print("Goodbye 👋🏼")
        break
    default:
       print("program gonna break")
        break
    
    }
//    while enter1 == 0 {
//        break
//    }
    if enter1 == 0 {
        break
    }
}

