//
//  bus_numberView.swift
//  WheelchairAid
//
//  Created by user on 5/9/23.
//

import SwiftUI

struct bus_numberView: View {
    var busstop:String
    @State private var isRefreshing = false 
    var busstop:String
    var body: some View {
        NavigationStack {
        
            List{
                    NavigationLink {
                        Text("map")
                    } label: {
                        HStack{
                            Text("945").font(.system(size: 25))
                                .bold()
                            Spacer()
                            VStack{
                                Text("2 mins").padding(5)
                                HStack{
                                    Image(systemName: "figure.roll").foregroundColor(.green)
                                    Text("2 available").padding(5)
                                }
                                
                            }
                        }
                    }
                NavigationLink {
                    Text("map")
                } label: {
                    HStack{
                        Text("960").font(.system(size: 25))
                            .bold()
                        Spacer()
                        VStack{
                            Text("5 mins").padding(5)
                            HStack{
                                Image(systemName: "figure.roll").foregroundColor(.red)
                                Text("0 available").padding(5)
                            }
                            
                        }
                    }
                }
                NavigationLink {
                    Text("map")
                } label: {
                    HStack{
                        Text("187").font(.system(size: 25))
                            .bold()
                        Spacer()
                        VStack{
                            Text("7 mins").padding(5)
                            HStack{
                                Image(systemName: "figure.roll").foregroundColor(.green)
                                Text("1 available").padding(5)
                            }
                            
                        }
                    }
                }
                NavigationLink {
                    Text("map")
                } label: {
                    HStack{
                        Text("188").font(.system(size: 25))
                            .bold()
                        Spacer()
                        VStack{
                            Text("15 mins").padding(5)
                            HStack{
                                Image(systemName: "figure.roll").foregroundColor(.green)
                                Text("2 available").padding(5)
                            }
                            
                        }
                    }
                }
                NavigationLink {
                    Text("map")
                } label: {
                    HStack{
                        Text("987").font(.system(size: 25))
                        Spacer()
                        VStack{
                            Text("4 mins").padding(5)
                            HStack{
                                Image(systemName: "figure.roll").foregroundColor(.green)
                                Text("1 available").padding(5)
                            }
                            
                        }
                    }
                }
                NavigationLink {
                    Text("map")
                } label: {
                    HStack{
                        Text("75").font(.system(size: 25))
                        Spacer()
                        VStack{
                            Text("4 mins").padding(5)
                            HStack{
                                Image(systemName: "figure.roll").foregroundColor(.red)
                                Text("0 available").padding(5)
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
