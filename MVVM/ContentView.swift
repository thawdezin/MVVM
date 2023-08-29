//
//  ContentView.swift
//  MVVM
//
//  Created by ThawDeZin on 8/29/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: CounterViewModel

    var body: some View {
        VStack {
            Text("Count: \(viewModel.counter.count)")
                .font(.largeTitle)
                .padding()

            HStack {
                Button("Increase") {
                    viewModel.increaseCount()
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)

                Button("Decrease") {
                    viewModel.decreaseCount()
                }
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: CounterViewModel())
    }
}
