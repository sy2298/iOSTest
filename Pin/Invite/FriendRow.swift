//
//  FriendRow.swift
//  View3
//
//  Created by Emily Nan on 2020/02/03.
//  Copyright © 2020 Emily Nan. All rights reserved.
//

import SwiftUI

struct FriendRow: View {
    @EnvironmentObject var cotravelers : CoTraveler
    @State var itemClick = false
    var item : Friend
    var index:Int{
        cotravelers.friends.firstIndex(where: {$0.id == item.id} )!
    }
    var body: some View{
        HStack{
            Image(item.imageName)
            .resizable()
            .frame(width: 40, height: 40)
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 2))
            Text(item.name)
            Spacer()
            Button(action:{
                self.itemClick.toggle()
                self.cotravelers.friends[self.index].goOnTrip.toggle()
            }){
                if self.cotravelers.friends[self.index].goOnTrip==true{
                    ZStack{
                    Circle()
                        .frame(width:30,height:30)
                        .foregroundColor(Color.init(red: 123/255, green: 175/255, blue: 222/255))
                    Image(systemName:"checkmark")
                        .resizable()
                        .frame(width:15,height:15)
                       .foregroundColor(Color.white)
                    }
                }
                else{
                    Circle()
                    .frame(width:28,height:30)
                        .foregroundColor(Color.white)
                    .overlay(Circle().stroke(Color.gray,lineWidth:2))
                }
            }
        }
    }
 
}

