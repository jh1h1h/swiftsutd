//
//  BusStopsView.swift
//  WheelchairAid
//
//  Created by user on 6/9/23.
//

import SwiftUI

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
    
    private func findByBusStop(number: String)-> [Bus]{
        var arr:[Bus] = []
        for i in 0...(busNumbers.count - 1){
            if busNumbers[i] == busNumber{
                arr.append(Bus(name: names[i], number: numbers[i], road: roads[i], avail: availability[i], busNumber: busNumbers[i], color: colors[i], arriving: arriving[i], id: String(i)))
//                arr.append([names[i], numbers[i], roads[i], availability[i], busNumbers[i], colors[i]])
            }
        }
        return arr
    }
    var body: some View {
        let info:[Bus] = findByBusStop(number: busNumber)
        List{
//            ForEach(info){ bus in
//                HStack{
//                    VStack(alignment: .leading){
//                        Text(bus.name).padding(.vertical,5)
//                        Text(bus.number).padding(.vertical,5)
//                    }
//                    Spacer()
//                    VStack(alignment: .trailing){
//                        Text(bus.arriving + " mins").font(.system(size: 25))
//                        HStack{
//                            if bus.avail == "0"{
//                                Image(systemName: "figure.roll").foregroundColor(.red)
//                            }else{
//                                Image(systemName: "figure.roll").foregroundColor(.green)
//                            }
//                            Text(bus.avail + " available")
//                        }
//                    }
//                }
//            }
            Section(header: HStack{
                Text("Changi Village Rd").font(.system(size: 15))
                Spacer()
                Text(busNumber)
            }){
                HStack{
                    VStack(alignment: .leading){
                        Text("Changi Village Ter").padding(.vertical,5)
                        Text("99009").padding(.vertical,5)
                    }
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("5 mins").font(.system(size: 25))
                        HStack{
                            Image(systemName: "figure.roll").foregroundColor(.green)
                            Text("2 available")
                        }
                    }
                }
                HStack{
                    VStack(alignment: .leading){
                        Text("Blk 201 Cp").padding(.vertical,5)
                        Text("67271").padding(.vertical,5)
                    }
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("15 mins").font(.system(size: 25))
                        HStack{
                            Image(systemName: "figure.roll").foregroundColor(.red)
                            Text("0 available")
                        }
                    }
                }
                HStack{
                    VStack(alignment: .leading){
                        Text("Senkang Int").padding(.vertical,5)
                        Text("67009").padding(.vertical,5)
                    }
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("18 mins").font(.system(size: 25))
                        HStack{
                            Image(systemName: "figure.roll").foregroundColor(.green)
                            Text("1 available")
                        }
                    }
                }

            }
            Section(header: HStack{
                Text("Upp Changi Rd East").font(.system(size: 15))
                Spacer()
                Text(busNumber)
            }){
                HStack{
                    VStack(alignment: .leading){
                        Text("Changi Golf Course").padding(.vertical,5)
                        Text("99049").padding(.vertical,5)
                    }
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("2 mins").font(.system(size: 25))
                        HStack{
                            Image(systemName: "figure.roll").foregroundColor(.red)
                            Text("0 available")
                        }
                    }
                }
                HStack{
                    VStack(alignment: .leading){
                        Text("St. George Chapel").padding(.vertical,5)
                        Text("99039").padding(.vertical,5)
                    }
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("3 mins").font(.system(size: 25))
                        HStack{
                            Image(systemName: "figure.roll").foregroundColor(.green)
                            Text("2 available")
                        }
                    }
                }
                HStack{
                    VStack(alignment: .leading){
                        Text("Senkang Int").padding(.vertical,5)
                        Text("67009").padding(.vertical,5)
                    }
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("18 mins").font(.system(size: 25))
                        HStack{
                            Image(systemName: "figure.roll").foregroundColor(.green)
                            Text("1 available")
                        }
                    }
                }

            }
            Section(header: HStack{
                Text("Bedok Rd").font(.system(size: 15))
                Spacer()
                Text(busNumber)
            }){
                HStack{
                    VStack(alignment: .leading){
                        Text("Changi Village Ter").padding(.vertical,5)
                        Text("99009").padding(.vertical,5)
                    }
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("5 min").font(.system(size: 25))
                        HStack{
                            Image(systemName: "figure.roll").foregroundColor(.green)
                            Text("2 available")
                        }
                    }
                }
                HStack{
                    VStack(alignment: .leading){
                        Text("Blk 201 Cp").padding(.vertical,5)
                        Text("67271").padding(.vertical,5)
                    }
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("15 min").font(.system(size: 25))
                        HStack{
                            Image(systemName: "figure.roll").foregroundColor(.red)
                            Text("0 available")
                        }
                    }
                }
                HStack{
                    VStack(alignment: .leading){
                        Text("Senkang Int").padding(.vertical,5)
                        Text("67009").padding(.vertical,5)
                    }
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("18 min").font(.system(size: 25))
                        HStack{
                            Image(systemName: "figure.roll").foregroundColor(.green)
                            Text("1 available")
                        }
                    }
                }

            }
        }
    }
                            struct BusStopsView_Previews: PreviewProvider {
                                   static var previews: some View {
                                       BusStopsView(busNumber: "702A")
                                   }
                               }
                           }
        
                        
