//
//  Final View.swift
//  WheelchairAid
//
//  Created by user on 7/9/23.
//

import SwiftUI

struct Final_View: View {
    let names = ["St. Anthony's Pr Sch", "Blk 347", "Opp Hometeamns", "Opp Blk 347", "Hometeamns", "Opp Blk 336", "Blk 334", "Blk 331", "Bt Batok Driving Ctr", "Opp Bt Gombbak Stn", "Bt Gombak Stn"]
    let numbers = ["43659" , "43581", "43641" , "43589", "43649","43839","43831", "43491" , "43521" ,"43571","43579"]
    let roads = ["BT BATOK ST 34","BT BATOK WEST AVE 5","BT BATOK WEST AVE 7","BT BATOK WEST AVE 5","BT BATOK WEST AVE 7","BT BATOK WEST AVE 7","BK BATOK WEST AVE 7","BK BATOK WEST AVE 4","BT BATOK WEST AVE 5","BT BAKTOK WEST AVE 5","BT BATOK WEST AVE 5"]
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            ButtonView(names: names, numbers: numbers, roads: roads)
                .tabItem {
                    Label("Bus Stop", systemImage: "building.fill")
                }
            BusNumbersView()
                .tabItem {
                    Label("Bus", systemImage: "bus.fill")
                }
        }.preferredColorScheme(.dark)
    }
}

struct Final_View_Previews: PreviewProvider {
    static var previews: some View {
        Final_View()
    }
}
