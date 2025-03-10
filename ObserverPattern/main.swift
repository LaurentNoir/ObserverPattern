//
//  main.swift
//  ObserverPattern
//
//  Created by laurent Castañeda on 26/02/25.
//

import Foundation



print("Welcome to Castañeda's family!")

let channel = FamilyChannel()
var state = Menu.addUser

while state != Menu.close {
    
    print("Please, select a option: \n 1 - Add a new member \n 2 - Delete a member \n 3 - Send a message \n 4 - Exit")
    
    if let option = Int(readLine() ?? ""){
        
        switch option {
        case Menu.addUser.rawValue:
            
            print("Write the name of devise")
            
            if let name: String = readLine(){
                
                let devise = Subscriber(observable: channel)
                devise.setName(name: name)
                channel.attach(observer: devise)
                
            }
            
        case Menu.deleteUser.rawValue:
            print("Write the name of devise")
            
            if let name: String = readLine(){
                channel.delete(name: name)
            }
            
            
        case Menu.notifyUsers.rawValue:
            print("Write the text notification:")
            
            let text = readLine() ?? ""
            channel.SendNotification(title: text)
            
        case Menu.close.rawValue:
            state = Menu.close
            
        default:
            print("You has selected an invalid option.")
        }
        
    }else{
        print("You has selected an invalid option.")
    }
    
    
    
}



//print("Hello, World!")

