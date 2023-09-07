//
//  bus_numberView.swift
//  WheelchairAid
//
//  Created by user on 5/9/23.
//

import SwiftUI

struct bus_numberView: View {
    var busstop:String
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
        for i in 0...(numbers.count - 1){
            if numbers[i] == number{
                arr.append(Bus(name: names[i], number: numbers[i], road: roads[i], avail: availability[i], busNumber: busNumbers[i], color: colors[i], arriving: arriving[i], id: String(i)))
//                arr.append([names[i], numbers[i], roads[i], availability[i], busNumbers[i], colors[i]])
            }
        }
        return arr
    }
    var busNumbers = ["2","12E","21A","187","98A","268","268B","602","603","702","702A"]
    let availability = ["0", "1", "2", "0", "2", "1", "0", "2", "2", "1", "1"]
    let minutes=["2","5","10","10","10","10","10","10","10","26","30"]
    @State private var isRefreshing = false
    var body: some View {
        let info:[Bus] = findByBusStop(number: busstop)
        NavigationStack {
                
            List{
                ForEach(info){data in
                    NavigationLink {
                        ContenttView(busnumer: data.busNumber, availability: data.avail,arrivingMin: data.arriving)
                    } label: {
                        HStack{
                            Text(data.busNumber).font(.system(size: 25))
                                .bold()
                            Spacer()
                            VStack(alignment: . trailing){
                                Text(data.arriving+" mins").padding(5)
                                if( data.avail=="0"){
                                    HStack{
                                        Image(systemName: "figure.roll").foregroundColor(.red)
                                        Text(data.avail+" available").padding(5)
                                    }
                                }
                                else{
                                    HStack{
                                        Image(systemName: "figure.roll").foregroundColor(.green)
                                        Text(data.avail+" available").padding(5)
                                    }
                                }
                                
                            }
                        }
                    }
                }
//                ForEach(busNumbers.indices, id: \.self) { index in
//                    NavigationLink {
//                        ContenttView(busnumer: busNumbers[index], availability: availability[index],arrivingMin: minutes[index])
//                    } label: {
//                        HStack{
//                            Text(busNumbers[index]).font(.system(size: 25))
//                                .bold()
//                            Spacer()
//                            VStack(alignment: . trailing){
//                                Text(minutes[index]+" mins").padding(5)
//                                if( availability[index]=="0"){
//                                    HStack{
//                                        Image(systemName: "figure.roll").foregroundColor(.red)
//                                        Text(availability[index]+" available").padding(5)
//                                    }
//                                }
//                                else{
//                                    HStack{
//                                        Image(systemName: "figure.roll").foregroundColor(.green)
//                                        Text(availability[index]+" available").padding(5)
//                                    }
//                                }
//
//                            }
//                        }
//                    }
//                }
                            }
//            .listStyle(InsetListStyle())
            .navigationTitle(busstop)
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
  
struct bus_numberView_Previews: PreviewProvider {
    static var previews: some View {
        bus_numberView(busstop: "43659")
    }
}
