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
                    VStack(alignment: . leading){
                        Text("Near By")
                    }
                    ForEach(names.indices, id: \.self) { index in
                        NavigationLink {
                            bus_numberView(busstop: names[index])
                        } label: {
                            VStack(alignment: .leading){
                                Text(numbers[index]).padding(2)
                                    .font(.system(size: 15))
                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.098, saturation: 0.97, brightness: 0.803)/*@END_MENU_TOKEN@*/)
                                Text(names[index]).bold().font(.system(size: 18))
                                HStack{
                                    Image(systemName: "circle.fill")
                                        .font(.system(size: 5))
                                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.098, saturation: 0.994, brightness: 0.586)/*@END_MENU_TOKEN@*/)
                                    Text(roads[index])
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
    private func refreshData() async {
         // Simulate a delay, replace with actual data refresh logic
         try? await Task.sleep(nanoseconds: 2) // Sleep for 2 seconds
         isRefreshing = false // End the refreshing state
     }
 }


struct SearchFunction_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(names:["St. Anthony's Pr Sch", "Blk 347", "Opp Hometeamns", "Opp Blk 347", "Hometeamns", "Opp Blk 336", "Blk 334", "Blk 331", "Bt Batok Driving Ctr", "Opp Bt Gombbak Stn", "Bt Gombak Stn"],numbers:["43659" , "43581", "43641" , "43589", "43649","43839","43831", "43491" , "43521" ,"43571","43579"],roads:["BT BATOK ST 34","BT BATOK WEST AVE 5","BT BATOK WEST AVE 7","BT BATOK WEST AVE 5","BT BATOK WEST AVE 7","BT BATOK WEST AVE 7","BK BATOK WEST AVE 7","BK BATOK WEST AVE 4","BT BATOK WEST AVE 5","BT BAKTOK WEST AVE 5","BT BATOK WEST AVE 5"])
    }
}
