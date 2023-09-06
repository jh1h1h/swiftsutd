//
//  BusStopsView.swift
//  WheelchairAid
//
//  Created by user on 6/9/23.
//

import SwiftUI

struct BusStopsView: View {
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    Section(header: HStack{
                        Text("Upper Changi")
                        Spacer()
                        Text("9A")
                    }){
                        HStack{
                            VStack(alignment: .leading){
                                Text("Senkang Int").padding(.bottom,5)
                                Text("67009")
                            }
                            Spacer()
                            VStack{
                                Text("5 min").font(.system(size: 30))
                                HStack{
                                    Image(systemName: "circle.fill").foregroundColor(.green)
                                    Text("2 seats available")
                                }
                            }
                        }
                        HStack{
                            VStack(alignment: .leading){
                                Text("Blk 201 Cp").padding(.bottom,10)
                                Text("67271")
                            }
                            Spacer()
                            VStack{
                                Text("15 min").font(.system(size: 30))
                                HStack{
                                    Image(systemName: "circle.fill").foregroundColor(.red)
                                    Text("no seats available")
                                }
                            }
                        }
                        HStack{
                            VStack(alignment: .leading){
                                Text("Senkang Int").padding(.bottom,10)
                                Text("67009")
                            }
                            Spacer()
                            VStack{
                                Text("18 min").font(.system(size: 30))
                                HStack{
                                    Image(systemName: "circle.fill").foregroundColor(.green)
                                    Text("1 seat available")
                                }
                            }
                        }
                        
                    }
                    Section(header: HStack{
                        Text("Upper Changi")
                        Spacer()
                        Text("9A")
                    }){
                        HStack{
                            VStack(alignment: .leading){
                                Text("Senkang Int").padding(.bottom,10)
                                Text("67009")
                            }
                            Spacer()
                            VStack{
                                Text("5 min").font(.system(size: 30))
                                HStack{
                                    Image(systemName: "circle.fill").foregroundColor(.green)
                                    Text("2 seats available")
                                }
                            }
                        }
                        HStack{
                            VStack(alignment: .leading){
                                Text("Blk 201 Cp").padding(.bottom,10)
                                Text("67271")
                            }
                            Spacer()
                            VStack{
                                Text("15 min").font(.system(size: 30))
                                HStack{
                                    Image(systemName: "circle.fill").foregroundColor(.red)
                                    Text("no seats available")
                                }
                            }
                        }
                        HStack{
                            VStack(alignment: .leading){
                                Text("Senkang Int").padding(.bottom,10)
                                Text("67009")
                            }
                            Spacer()
                            VStack{
                                Text("18 min").font(.system(size: 30))
                                HStack{
                                    Image(systemName: "circle.fill").foregroundColor(.green)
                                    Text("1 seat available")
                                }
                            }
                        }
                        
                    }
                    Section(header: HStack{
                        Text("Upper Changi")
                        Spacer()
                        Text("9A")
                    }){
                        HStack{
                            VStack(alignment: .leading){
                                Text("Senkang Int").padding(.bottom,10)
                                Text("67009")
                            }
                            Spacer()
                            VStack{
                                Text("5 min").font(.system(size: 30))
                                HStack{
                                    Image(systemName: "circle.fill").foregroundColor(.green)
                                    Text("2 seats available")
                                }
                            }
                        }
                        HStack{
                            VStack(alignment: .leading){
                                Text("Blk 201 Cp").padding(.bottom,10)
                                Text("67271")
                            }
                            Spacer()
                            VStack{
                                Text("15 min").font(.system(size: 30))
                                HStack{
                                    Image(systemName: "circle.fill").foregroundColor(.red)
                                    Text("no seats available")
                                }
                            }
                        }
                        HStack{
                            VStack(alignment: .leading){
                                Text("Senkang Int").padding(.bottom,10)
                                Text("67009")
                            }
                            Spacer()
                            VStack{
                                Text("18 min").font(.system(size: 30))
                                HStack{
                                    Image(systemName: "circle.fill").foregroundColor(.green)
                                    Text("1 seat available")
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
            BusStopsView()
        }
    }
}
