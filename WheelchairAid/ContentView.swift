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
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
