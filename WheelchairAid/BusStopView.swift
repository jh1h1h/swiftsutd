//
//  BusStopsView.swift
//  WheelchairAid
//
//  Created by user on 6/9/23.
//

import SwiftUI

extension Array where Element: Equatable {
    var unique: [Element] {
        var uniqueValues: [Element] = []
        forEach { item in
            guard !uniqueValues.contains(item) else { return }
            uniqueValues.append(item)
        }
        return uniqueValues
    }
}

struct BusStopsView: View {
    var busNumber:String
    private struct Bus: Identifiable {
        let name: String
        let number: String
        let road: String
        let avail: String
        let busNumber: String
        let color: String
        let arriving: String
        var id: String
    }
    private struct RoadType: Identifiable {
        let road: String
        var id: String
    }
    
    private func findByBusStop(number: String)-> [Bus]{
        var arr:[Bus] = []
        for i in 0...(busNumbers.count - 1){
            if busNumbers[i] == number{
                arr.append(Bus(name: names[i], number: numbers[i], road: roads[i], avail: availability[i], busNumber: busNumbers[i], color: colors[i], arriving: arriving[i], id: String(i)))
//                arr.append([names[i], numbers[i], roads[i], availability[i], busNumbers[i], colors[i]])
            }
        }
        return arr
    }
    private func findByRoad(road: String)-> [Bus]{
        var arr:[Bus] = []
        for i in 0...(roads.count - 1){
            if roads[i] == road{
                arr.append(Bus(name: names[i], number: numbers[i], road: roads[i], avail: availability[i], busNumber: busNumbers[i], color: colors[i], arriving: arriving[i], id: String(i)))
//                arr.append([names[i], numbers[i], roads[i], availability[i], busNumbers[i], colors[i]])
            }
        }
        return arr
    }
    private func getUniqueRoads(info: [Bus])->[RoadType]{
        var arr1 = info.map{$0.road}.unique
        var arr2:[RoadType] = []
        for i in 0...arr1.count-1{
            arr2.append(RoadType(road: arr1[i],id: String(i)))
        }
        return arr2
    }
    
    var body: some View {
        let info:[Bus] = findByBusStop(number: busNumber)
        List{
            ForEach(getUniqueRoads(info:info)) { data in
//                Text(data.road)
                Section(header: HStack{
                    Text(data.road).font(.system(size: 15))
                    Spacer()
                    Text(busNumber)
                }){
                    let info2:[Bus] = info.filter{$0.road == data.road}
                    ForEach(info2){ bus in
                        HStack{
                            VStack(alignment: .leading){
                                Text(bus.name).padding(.vertical,5)
                                Text(bus.number).padding(.vertical,5)
                            }
                            Spacer()
                            VStack(alignment: .trailing){
                                Text(bus.arriving + " mins").font(.system(size: 25))
                                HStack{
                                    if bus.avail == "0"{
                                        Image(systemName: "figure.roll").foregroundColor(.red)
                                    }else{
                                        Image(systemName: "figure.roll").foregroundColor(.green)
                                    }
                                    Text(bus.avail + " available")
                                }
                            }
                        }
                    }
                }
            }
        }
    }
                            struct BusStopsView_Previews: PreviewProvider {
                                   static var previews: some View {
                                       BusStopsView(busNumber: "2")
                                   }
                               }
                           }
        
                        
