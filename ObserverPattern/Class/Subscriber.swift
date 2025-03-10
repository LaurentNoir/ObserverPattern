//
//  Subscriber.swift
//  ObserverPattern
//
//  Created by laurent Castañeda on 9/03/25.
//
import Foundation


public class Subscriber: IObserver {
   
    
    private var _name: String = ""
    
    private var observable: IObservable
    
    init(observable: IObservable) {
        self.observable = observable
    }
    
    public func update() {
        let channel = self.observable as! FamilyChannel
        print("\(_name.capitalized)'s devise notification: \(channel.getNotification())")
    }
    
    public func setName(name: String){
        self._name = name.uppercased()
    }
    
    func getName() -> String {
        return _name
    }
}
