//
//  ProfileView.swift
//  WheelchairAid
//
//  Created by I3LT-031 on 5/9/23.
//

import SwiftUI

struct ProfileView: View {
    func getCSVData() -> Array<String> {
        do {
            let content = try String(contentsOfFile: "./bus_routes.csv")
            let parsedCSV: [String] = content.components(
                separatedBy: "\n"
            ).map{ $0.components(separatedBy: ",")[0] }
            return parsedCSV
        }
        catch {
            return []
        }
    }
    var body: some View {
        let data = getCSVData()
        Text(data.description)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
