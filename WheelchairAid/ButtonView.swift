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
                    ForEach(names.indices, id: \.self) { index in
                        NavigationLink {
                            Text("Hi")
                        } label: {
                            VStack(alignment: .leading){
                                Text(numbers[index])
                                    .font(.system(size: 15))
                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.098, saturation: 0.994, brightness: 0.586)/*@END_MENU_TOKEN@*/)
                                Text(names[index]).bold()
                                HStack{
                                    Image(systemName: "circle.fill")
                                        .font(.system(size: 5))
                                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.098, saturation: 0.994, brightness: 0.586)/*@END_MENU_TOKEN@*/)
                                    Text(roads[index])
                                        .font(.system(size: 10))
                                }
                                
                            }
                        }
                        .listRowBackground(Color(hue: 0.072, saturation: 0.277, brightness: 0.933))
                    }
                }
                .navigationTitle("Bus Stations")
                .refreshable {
                    // This block is executed when the user pulls to refresh
                    await refreshData() // Call your refresh data function here
                }
            }
    }
    private func refreshData() async {
         // Simulate a delay, replace with actual data refresh logic
         try? await Task.sleep(nanoseconds: 2) // Sleep for 2 seconds
         isRefreshing = false // End the refreshing state


     }
 }


//struct SearchFunction_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView()
//    }
//}
