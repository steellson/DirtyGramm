//
//  ContentView.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 10.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        
        Group {
            
            if viewModel.userSession == nil {
                LoginView()
            } else {
                TabBarView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
