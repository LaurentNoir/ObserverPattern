//
//  FamilyChannel.swift
//  ObserverPattern
//
//  Created by laurent Castañeda on 9/03/25.
//
import Foundation

public class FamilyChannel: IObservable {
    
    var _channelSubscribers: [IObserver] = []
    private var lastTextNotification: String = "";
    
    func attach(observer: IObserver) {
        _channelSubscribers.append(observer)
    }
    
    func delete(name: String) {
        _channelSubscribers = _channelSubscribers.filter({ $0.getName() != name.uppercased() })
    }
    
    func notify() {
        _channelSubscribers.forEach{Subscriber in
            Subscriber.update()
        }
    }
    
    func SendNotification(title: String){
        lastTextNotification = title
        notify();
    }
    
    func getNotification() -> String {
        return lastTextNotification
    }
}
