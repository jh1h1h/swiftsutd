//
//  BusNumbersView.swift
//  WheelchairAid
//
//  Created by user on 6/9/23.
//
//
import SwiftUI

struct BusNumbersView: View {
    var body: some View {
        NavigationStack{
            List{
                
                    ForEach(busNumbers.unique, id: \.self) { bus in
                        NavigationLink {
                            BusStopsView(busNumber: bus)
                                
                        } label: {
                            let index = busNumbers.firstIndex(of: bus)
                            HStack{
                                Text(bus)
                                    .font(.system(size: 18))
                                    .padding(.vertical,8)
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
            .navigationTitle("Bus Numbers")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct BusNumbersView_Previews: PreviewProvider {
    static var previews: some View {
        BusNumbersView()
    }
}
