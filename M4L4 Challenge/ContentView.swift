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
                    Rectangle()
                        .frame(width:geo.size.width ,height:geo.size.height)
                        .foregroundColor(.green)
                        .onTapGesture {
                            print("width: \(geo.size.width), height: \(geo.size.height)")
                        }
                    Rectangle()
                        .frame(width:geo.size.width*(2/3), height: geo.size.height/4)
                        .foregroundColor(.red)
                        .position(x:geo.size.width/2, y:geo.size.height/2)
                        .onTapGesture {
                            print("width: \(geo.size.width*(2/3)), height:\(geo.size.height/4)")
                        }
            }
            
            GeometryReader { geo in
                HStack(spacing:0){
                    Rectangle()
                        .frame(width:geo.size.width/2)
                        .foregroundColor(.purple)
                        .onTapGesture {
                            print("width: \(geo.size.width/2), height: \(geo.size.height)")
                        }
                    Rectangle()
                        .foregroundColor(.orange)
                        .onTapGesture {
                            print("width: \(geo.size.width/2), height: \(geo.size.height)")
                        }
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
