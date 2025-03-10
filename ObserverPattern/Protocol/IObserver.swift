//
//  IObserver.swift
//  ObserverPattern
//
//  Created by laurent Castañeda on 26/02/25.
//

import Foundation

protocol IObserver {
    func update()
    func getName() -> String
}

