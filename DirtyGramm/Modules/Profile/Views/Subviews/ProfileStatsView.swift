//
//  ProfileStatsView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 09.08.2023.
//

import SwiftUI

struct ProfileStatsView: View {
    
    var value: Int
    var nameOfStat: String = "Stat"

    
    var body: some View {
        
        VStack {
            Text(String.init(value))
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(nameOfStat)
                .font(.footnote)
        }
        .frame(width: 76)
    }
}

struct ProfileStatsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileStatsView(value: 0)
    }
}
