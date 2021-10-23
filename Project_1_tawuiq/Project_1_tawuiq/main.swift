//
//  main.swift
//  Project_1_tawuiq
//
//  Created by AlDanah Aldohayan on 21/10/2021.
//

import Foundation



class ToDoList : CustomStringConvertible {
    
//    vars name, descriptionList, deadline
    var name: String
    var descriptionList: String
    var date: Date?
    var description: String {
            return "\(name), \(descriptionList)"
        }
    
    init(_ name: String, _ descriptionList: String, _ date: Date){
        self.name = name
        self.descriptionList = descriptionList
        self.date = date
    }
    
    
    
    func creatingToDo() {
//        create a new todo by providing its "name", "description", and  (OPTIONAL"deadline") -> date only of the todo
        print("ToDo List of \(name)")
    }
    
    
    func listTodos() {
//        list and see all of my todos that I already added
    }
    
    
    func selectAndUpdate(){
//        select any of the todos and update its information
    }
    
    
    func removeTodoList() {
//        remove a todo from the todo list by writing the number of the todo in the list
    }
    
    
    
//    !!!BONUS!!!
    
    func reOrderAList(){
//        reorder the todos by the nearest deadline || reorder the todos by the farthest deadline || also be able to return them back to the original order (by creation time).
    }
    
    func checkDone(){
//        check the todo which indicates that the todo is done
    }
    
    func unCheck(){
//        uncheck any checked (done) todo; so that I return it back to its orginal status.
    }
}
