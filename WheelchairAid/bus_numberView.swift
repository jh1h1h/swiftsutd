//
//  bus_numberView.swift
//  WheelchairAid
//
//  Created by user on 5/9/23.
//

import SwiftUI

struct bus_numberView: View {
    var busstop:String
    var busNumbers = ["2","12E","21A","187","98A","268","268B","602","603","702","702A"]
    let availability = ["0", "1", "2", "0", "2", "1", "0", "2", "2", "1", "1"]
    let minutes=["2","5","7","9","11","12","13","23","26","29","30"]
    @State private var isRefreshing = false
    var body: some View {
        NavigationStack {
                
            List{
                ForEach(busNumbers.indices, id: \.self) { index in
                    NavigationLink {
                        ContenttView(busnumer: busNumbers[index], availablity: availability[index],arrivingmin: minutes[index])
                    } label: {
                        HStack{
                            Text(busNumbers[index]).font(.system(size: 25))
                                .bold()
                            Spacer()
                            VStack(alignment: . trailing){
                                Text(minutes[index]+" mins").padding(5)
                                if( availability[index]=="0"){
                                    HStack{
                                        Image(systemName: "figure.roll").foregroundColor(.red)
                                        Text(availability[index]+" available").padding(5)
                                    }
                                }
                                else{
                                    HStack{
                                        Image(systemName: "figure.roll").foregroundColor(.green)
                                        Text(availability[index]+" available").padding(5)
                                    }
                                }
                                
                            }
                        }
                    }
                }
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
        bus_numberView(busstop: "12")
    }
}
