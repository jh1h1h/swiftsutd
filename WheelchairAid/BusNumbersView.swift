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
                
                    ForEach(busNumbers.indices, id: \.self) { index in
                        NavigationLink {
                            BusStopsView(busNumber: busNumbers[index])
                                
                        } label: {
                            HStack{
                                Text(busNumbers[index])
                                    .font(.system(size: 18))
                                    .padding(.vertical,8)
                                Spacer()
                                if(colors[index]=="GAS"){
                                    Text(colors[index]).foregroundColor(.yellow)
                                }
                                else if(colors[index]=="TTS"){
                                    Text(colors[index]).foregroundColor(.green)
                                }
                                else if(colors[index]=="SMRT"){
                                    Text(colors[index]).foregroundColor(.red)
                                }
                                else{
                                    Text(colors[index]).foregroundColor(.purple)
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
