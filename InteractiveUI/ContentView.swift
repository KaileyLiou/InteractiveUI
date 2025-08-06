//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    @State private var textTitle2 = "What is today's date?"
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Text(textTitle2)
                .font(.title)
            DatePicker(selection: .constant(Date()), label: { Text("Date") })
            Button("Submit") {
                textTitle = "Welcome, \(name)!"
                name = ""
                textTitle2 = "Your submission has been recorded!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.mint)

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
