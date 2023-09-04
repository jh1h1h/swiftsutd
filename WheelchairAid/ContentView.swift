//
//  ContentView.swift
//  WheelchairAid
//
//  Created by I3LT-031 on 4/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            VStack(alignment: .leading) {
                Text("Hello, wold!")
                    .font(.title)
                HStack {
                    Text(/*@START_MENU_TOKEN@*/"subheadline"/*@END_MENU_TOKEN@*/)
                        .font(.subheadline)
                    Spacer()
                    Text(/*@START_MENU_TOKEN@*/"subheadline"/*@END_MENU_TOKEN@*/)
                        .font(.subheadline)
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
