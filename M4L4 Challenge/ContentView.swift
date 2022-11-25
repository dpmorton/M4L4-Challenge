//
//  ContentView.swift
//  M4L4 Challenge
//
//  Created by dpm on 11/25/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0){
            GeometryReader { geo in
                ZStack {
                    Rectangle()
                        .frame(width:geo.size.width ,height:geo.size.height)
                        .foregroundColor(.green)
                    Rectangle()
                        .frame(width:geo.size.width*(2/3), height: geo.size.height/4)
                        .foregroundColor(.red)
                }
            }
            
            GeometryReader { geo in
                HStack(spacing:0){
                    Rectangle()
                        .frame(width:geo.size.width/2)
                        .foregroundColor(.purple)
                    Rectangle()
                        .foregroundColor(.orange)
                }
            }
        }
        .ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
