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
    let busNumbers = ["2","12E","21A","187","98A","268","268B","602","603","702","702A"]
    let colors  = ["GAS","GAS","SBS","SMRT","TTS","SBS","SBS","GAS","TTS","SMRT","SMRT"]
    
    var body: some View {
        NavigationStack {
            NavigationLink{
                List {
                    ForEach(searchResultsBus, id: \.self) { name in
                        NavigationLink {
                            bus_numberView(busstop: name)
                        } label: {
                            let index = numbers.firstIndex(of: name)
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
            }label: {
                VStack{
                    Text("Bus Station").font(.system(size: 23)).foregroundColor(.black).bold()
                    Image("bus_station").resizable().scaledToFit()
                        .cornerRadius(10).padding(10).shadow(radius: 10)
                }.offset(y: 30)
            }

            NavigationLink{
                List{
                    ForEach(searchResultsBusStop, id: \.self) { name in
                        NavigationLink {
                            BusStopsView(busNumber: name)
                        } label: {
                            HStack{
                                let index = busNumbers.firstIndex(of: name)
                                Text(name)
                                Spacer()
                                if(colors[index ?? 0]=="GAS"){
                                    Text(colors[index ?? 0]).foregroundColor(.yellow)
                                }
                                else if(colors[index ?? 0]=="TTS"){
                                    Text(colors[index ?? 0]).foregroundColor(.green)
                                }
                                else if(colors[index ?? 0]=="SMRT"){
                                    Text(colors[index ?? 0]).foregroundColor(.red)
                                }
                                else{
                                    Text(colors[index ?? 0]).foregroundColor(.purple)
                                }
                            }
                        }
                        
                    }
                }
                .navigationTitle("Search for Bus Numbers")
                .searchable(text: $searchText)
            }label: {
                VStack{
                    Text("Bus Number").font(.system(size: 23 )).foregroundColor(.black).bold()
                    Image("Bus").resizable().scaledToFit()
                        .cornerRadius(10).padding(10).shadow(radius:10).offset(y: -50)
                }.offset(y: 30)
        }
    }
}
    var searchResultsBus:[String]{
        return numbers.filter{$0.contains(searchText)}
    }
    var searchResultsBusStop:[String]{
        return busNumbers.filter{$0.contains(searchText)}
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
