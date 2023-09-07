//
//  ButtonView.swift
//  WheelchairAid
//
//  Created by I3LT-031 on 5/9/23.
//

import SwiftUI

struct ButtonView: View {
    @State private var isRefreshing = false // Track the refresh state
    var names:[String]
    var numbers:[String]
    var roads:[String]
    var body: some View {
            NavigationStack {
                    List {
                        Section(header: Text("Nearby").font(.system(size: 15))){
                            ForEach(numbers.unique, id: \.self) { number in
                            NavigationLink {
                                bus_numberView(busstop: number)
                            } label: {
                                let index = numbers.firstIndex(of: number)
                                VStack(alignment: .leading){
                                    Text(number).padding(2)
                                        .font(.system(size: 15))
                                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.098, saturation: 0.97, brightness: 0.803)/*@END_MENU_TOKEN@*/)
                                    Text(names[index ?? 0]).bold().font(.system(size: 18))
                                    HStack{
                                        Image(systemName: "circle.fill")
                                            .font(.system(size: 5))
                                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.098, saturation: 0.994, brightness: 0.586)/*@END_MENU_TOKEN@*/)
                                        Text(roads[index ?? 0])
                                            .font(.system(size: 15)).padding(2)
                                    }
                                    
                                }
                            }
    //                        .listRowBackground(Color(hue: 0.072, saturation: 0.277, brightness: 0.933))
                        }
                    }
                    .navigationTitle("Bus Stations")
                    .navigationBarTitleDisplayMode(.inline)
                    .refreshable {
                        // This block is executed when the user pulls to refresh
                        await refreshData() // Call your refresh data function here
                    }
                }
            }
    }
    private func refreshData() async {
         // Simulate a delay, replace with actual data refresh logic
         try? await Task.sleep(nanoseconds: 2) // Sleep for 2 seconds
         isRefreshing = false // End the refreshing state
     }
 }


struct SearchFunction_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(names: names, numbers: numbers, roads: roads)
    }
}
