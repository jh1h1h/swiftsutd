//
//  BusStopsView.swift
//  WheelchairAid
//
//  Created by user on 6/9/23.
//

import SwiftUI

struct BusStopsView: View {
    var busNumber:String
    var body: some View {
        
                List{
                    Section(header: HStack{
                        Text("Changi Village Rd").font(.system(size: 15))
                        Spacer()
                        Text(busNumber)
                    }){
                        HStack{
                            VStack(alignment: .leading){
                                Text("Changi Village Ter").padding(.bottom,5)
                                Text("99009")
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
                                Text("Blk 201 Cp").padding(.bottom,10)
                                Text("67271")
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
                                Text("Senkang Int").padding(.bottom,10)
                                Text("67009")
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
                    Section(header: HStack{
                        Text("Upper Changi").font(.system(size: 15))
                        Spacer()
                        Text(busNumber)
                    }){
                        HStack{
                            VStack(alignment: .leading){
                                Text("Senkang Int").padding(.bottom,10)
                                Text("67009")
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
                                Text("Blk 201 Cp").padding(.bottom,10)
                                Text("67271")
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
                                Text("Senkang Int").padding(.bottom,10)
                                Text("67009")
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
                    Section(header: HStack{
                        Text("Jurong East").font(.system(size: 15))
                        Spacer()
                        Text(busNumber)
                    }){
                        HStack{
                            VStack(alignment: .leading){
                                Text("Senkang Int").padding(.bottom,10)
                                Text("67009")
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
                                Text("Blk 201 Cp").padding(.bottom,10)
                                Text("67271")
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
                                Text("Senkang Int").padding(.bottom,10)
                                Text("67009")
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
//                .scrollContentBackground(.hidden)
//                .background(Color.black)
//
    }
    
    struct BusStopsView_Previews: PreviewProvider {
        static var previews: some View {
            BusStopsView(busNumber: "123")
        }
    }
}

