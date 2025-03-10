//
//  IObservable.swift
//  ObserverPattern
//
//  Created by laurent Castañeda on 9/03/25.
//

import Foundation

protocol IObservable{
    func attach(observer: IObserver)
    func delete(name: String)
    func notify()
    
}
