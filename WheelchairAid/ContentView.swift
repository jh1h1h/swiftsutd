//
//  ContentView.swift
//  WheelchairAid
//
//  Created by I3LT-031 on 4/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
                    Text("Searching for \(searchText)")
                        .navigationTitle("Enter your bus stop")
                }
                .searchable(text: $searchText)
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            VStack(alignment: .leading) {
                Text("Hello, world!")
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
