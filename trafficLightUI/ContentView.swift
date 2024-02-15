//
//  ContentView.swift
//  trafficLightUI
//
//  Created by user on 15.02.2024.
//

import SwiftUI

enum TrafficLightColor {
    case red, yellow, green
}

struct TrafficLightView: View {
    @State private var currentColor: TrafficLightColor = .red
    
    var body: some View {
        VStack {
            Circle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .foregroundColor(currentColor == .red ? .red : .gray)
                .padding()
            
            Circle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(currentColor == .yellow ? .yellow : .gray)
                .padding()
            
            Circle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(currentColor == .green ? .green : .gray)
                .padding()
            
            Button(action: {
                           switch self.currentColor {
                           case .red:
                               self.currentColor = .yellow
                           case .yellow:
                               self.currentColor = .green
                           case .green:
                               self.currentColor = .red
                           }
                       }) {
                           Text("Change Color")
                               .fontWeight(.semibold)
                               .font(.title)
                               .padding()
                               .foregroundColor(.white)
                               .background(Color.blue)
                               .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct ContentView: View {
    var body: some View {
        TrafficLightView()
    }
}

#Preview {
    ContentView()
}
