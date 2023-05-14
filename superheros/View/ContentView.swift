//
//  ContentView.swift
//  superheros
//
//  Created by MacBook Pro on 25/05/2022.
//

import SwiftUI

struct ContentView: View {
    var superheros : [SuperHero] = superheroData
    var body: some View {
        
        ScrollView(.horizontal){
            HStack {
                ForEach(superheros) { item in
                   SuperheroView(SuperH: item)
                    
                }
                
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
