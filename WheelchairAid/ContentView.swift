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
        VStack(alignment: .leading){
            Text("Aid+").font(.system(size:25)).bold().offset(x: 20).foregroundColor(.white)
            
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
                    ZStack{
                        
                        
                        RoundedRectangle(cornerRadius: 20.0)
                            .fill(.white)
                            .opacity(0.25)
                            .shadow(radius: 10.0)
                            .padding()
                        VStack{
                            Text("Bus Station").font(.system(size: 23)).foregroundColor(.yellow).bold()
                            Image("bus_station").resizable().scaledToFit()
                                .cornerRadius(10).padding(50).shadow(radius: 10)
                        }.offset(y: 30)
                    }
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
                    ZStack{
                        
                        
                        RoundedRectangle(cornerRadius: 20.0)
                            .fill(.white)
                            .opacity(0.25)
                            .shadow(radius: 10.0)
                            .padding()
                        VStack{
                            Text("Bus").font(.system(size: 23)).foregroundColor(.yellow).bold().offset(y:30)
                            Image("Bus").resizable().scaledToFit()
                                .cornerRadius(10).padding(50).shadow(radius: 10).offset(y:-20)
                        }.offset(y: 30)
                    }
                }
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

