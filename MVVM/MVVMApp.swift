//
//  MVVMApp.swift
//  MVVM
//
//  Created by ThawDeZin on 8/29/23.
//

import SwiftUI

@main
struct MVVMApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: CounterViewModel())
        }
    }
}
