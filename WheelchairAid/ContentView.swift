//
//  ContentView.swift
//  WheelchairAid
//
//  Created by I3LT-031 on 4/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    let names = ["St. Anthony's Pr Sch", "Blk 347", "Opp Hometeamns", "Opp Blk 347", "Hometeamns", "Opp Blk 336", "Blk 334", "Blk 331", "Bt Batok Driving Ctr", "Opp Bt Gombbak Stn", "Bt Gombak Stn"]
    let numbers = ["43659" , "43581", "43641" , "43589", "43649","43839","43831", "43491" , "43521" ,"43571","43579"]
    let roads = ["BT BATOK ST 34","BT BATOK WEST AVE 5","BT BATOK WEST AVE 7","BT BATOK WEST AVE 5","BT BATOK WEST AVE 7","BT BATOK WEST AVE 7","BK BATOK WEST AVE 7","BK BATOK WEST AVE 4","BT BATOK WEST AVE 5","BT BAKTOK WEST AVE 5","BT BATOK WEST AVE 5"]
    let availability = [0, 1, 2, 0, 2, 1, 0, 2, 2, 1, 1]
    
    var body: some View {
        NavigationStack {
            NavigationStack {
                        List {
                            ForEach(searchResults, id: \.self) { name in
                                NavigationLink {
                                    Text(String(name))
                                } label: {
                                    var index = numbers.index(of: name)
                                    VStack(alignment: .leading){
                                        Text(name)
                                            .font(.system(size: 15))
                                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.098, saturation: 0.994, brightness: 0.586)/*@END_MENU_TOKEN@*/)
                                        Text(names[index ?? 0]).bold()
                                        HStack{
                                            Image(systemName: "circle.fill")
                                                .font(.system(size: 5))
                                                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.098, saturation: 0.994, brightness: 0.586)/*@END_MENU_TOKEN@*/)
                                            Text(roads[index ?? 0])
                                                .font(.system(size: 10))
                                        }
                                        
                                    }
                                }
                            }
                        }
                        .navigationTitle("Search for bus stop")
                        .searchable(text: $searchText)
                    }
                    
//            TabView {
//                ButtonView(names:names,numbers:numbers,roads:roads)
//                    .tabItem {
//                        Label("Received", systemImage: "tray.and.arrow.down.fill")
//                    }
//                ProfileView()
//                    .tabItem {
//                        Label("Sent", systemImage: "tray.and.arrow.up.fill")
//                    }
//            }
            
            
            
                }
    }
    var searchResults:[String]{
        return numbers.filter{$0.contains(searchText)}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
