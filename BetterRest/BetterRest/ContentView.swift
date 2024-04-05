//
//  ContentView.swift
//  BetterRest
//
//  Created by Leo Mogiano on 4/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
 
    var body: some View {
        VStack {
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25 ).padding(.horizontal, 80)
            DatePicker("Please enter a date", selection: $wakeUp,in: Date.now..., displayedComponents: .date).labelsHidden()
            Spacer().frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            Text(wakeUp, format: .dateTime.day().month().year())
            Text(Date.now.formatted(date: .long, time: .shortened))
        }
        .padding()
    }
    
    func exampleDates() {
        var components = DateComponents()
        components.hour = 8
        components.minute = 0
        let _date = Calendar.current.date(from: components)
    }
}

#Preview {
    ContentView()
}
