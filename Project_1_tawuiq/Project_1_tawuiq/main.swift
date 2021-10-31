//
//  main.swift
//  Project_1_tawuiq
//
//  Created by AlDanah Aldohayan on 21/10/2021.
//

import Foundation


print("Enter your pretty name👩🏻/👨🏻: ", terminator: "")
let name = Utils.readString()
//print("what you wanna do? ENTER (1) print (2) add (3)update (4) remove", terminator: "")
//let enter1 = Utils.readInt()
var obj1 = ToDoList()

print("Enter any number to start a list and 0 to end this 🐧: ", terminator: "")
let number = Int(readLine() ?? "") ?? 0
if number == 0 {
    print("invalid")
    print("Enter any number to start a list and 0 to end this 🐧: ", terminator: "")
    let number = Int(readLine() ?? "") ?? 0
    if number == 0 {
        print("invalid, GAME OVER")
    }
    
}

while number != 0 {
    // testingggggg
    print("what you wanna do? ENTER (1) print (2) add (3)update (4) remove,(0) for exiting this list: ", terminator: "")
    let enter1 = Int(readLine() ?? "") ?? 00
    if enter1 == 00 {
        print("invalid")
        print("Try again, what you wanna do? ENTER (1) print (2) add (3)update (4) remove,(0) for exiting this list: ", terminator: "")
        let enter2 = Int(readLine() ?? "") ?? 00
        if enter2 == 00 {
            print("invalid")
            print("Last chance, what you wanna do? ENTER (1) print (2) add (3)update (4) remove,(0) for exiting this list: ", terminator: "")
            let enter3 = Int(readLine() ?? "") ?? 00
            if enter3 == 00 {
                print("GAME OVER!")
            }
        }
        
    }
    
    
    switch enter1 {
    case 1:
        print("List of \(name)🎋:")
        obj1.printTodos()
    case 2:
        print("* What is your task's Name ↓: ", terminator: "")
        let enteredName = Utils.readString()
        print("* What is your task's Description ↓: ", terminator: "")
        let enteredDesc = Utils.readString()
        print("What is your task's deadline، please enter date in this format yyyy-MM-dd HH:mm:ss ↓: ", terminator: "")
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
    case 0:
        print("Goodbye 👋🏼")
    default:
        print("Press Enter")
    
    }
    if enter1 == 0 {
        break
    }
}

