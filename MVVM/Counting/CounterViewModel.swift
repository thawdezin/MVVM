//
//  CounterViewModel.swift
//  MVVM
//
//  Created by ThawDeZin on 8/29/23.
//

import SwiftUI
import Foundation

class CounterViewModel: ObservableObject {
    @Published var counter: Counter

    init() {
        self.counter = Counter(count: 0)
    }

    func increaseCount() {
        counter.count += 1
    }

    func decreaseCount() {
        counter.count -= 1
    }
}
