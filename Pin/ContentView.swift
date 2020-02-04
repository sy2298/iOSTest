//
//  ContentView.swift
//  Pin
//
//  Created by Emily Nan on 2020/02/04.
//  Copyright © 2020 Lee. All rights reserved.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Plan()
                .tabItem{
                    Image(systemName:"map")
                        .resizable()
                        .frame(width:12,height:12)
                    Text("My Routes")
                }
                .modifier(SystemServices())
            MakePOI()
              .tabItem{
                    Image(systemName:"book")
                    .resizable()
                    .frame(width:12,height:12)
                    Text("My Moments")
                }
            .modifier(SystemServices())
            Profile()
                .tabItem {
                    Image(systemName:"person")
                    .resizable()
                    .frame(width:12,height:12)
                    Text("Profile")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
