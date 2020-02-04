//
//  InviteView.swift
//  View3
//
//  Created by Emily Nan on 2020/02/03.
//  Copyright © 2020 Emily Nan. All rights reserved.
//

import SwiftUI

struct InviteView: View {
   @EnvironmentObject var cotravelers : CoTraveler
   @State private var alertLink = false
    @State private var alertFriend = false
    @State private var temp = [Friend]()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    let friend = Bundle.main.decode([Friend].self,from:"friend.json")
    var body: some View {
        VStack(alignment:.leading,spacing: 10){
            HStack{
                Spacer()
                Button(action:{
                    self.cotravelers.onClick=true
                    self.addTraveler()
                    if(self.alertFriend == false){
                    self.presentationMode.wrappedValue.dismiss()
                    }
                 }){
                    Text("확인")
                    .foregroundColor(Color.black)
                    .font(.system(size: 18))
                    .cornerRadius(10)
                }
            .alert(isPresented: self.$alertFriend, content: {Alert(title:Text("5명이하까지 초대 가능합니다"))})
            } .padding(.vertical,25)
           Text("친구 초대하기")
                    .bold()
                    .font(.title)
           Text("일행을 추가하고 여행 계획을 함께 세워보아요.")
           Divider()
            Button(action:{
                self.alertLink = true
            }){
                HStack{
                    Image("link")
                    Text("링크 복사하기")
                    .padding(10)
                } .foregroundColor(Color.init(red: 51/255, green: 51/255, blue: 51/255))
            }
            Section{
                HStack{
                    Image("person")
                    Text("여행 상대")
                    .padding(.horizontal,10)
                }
                .padding(.bottom,10)
                .foregroundColor(Color.init(red: 51/255, green: 51/255, blue: 51/255))
                ForEach(friend){item in
                    FriendRow(item: item)
                }
            }
            Spacer()
            if alertLink{
                Divider()
                HStack{
                    Text("링크가 복사되었습니다!")
                    Spacer()
                    Button(action:{
                        self.alertLink=false
                    }){
                        Image(systemName:"xmark")
                            .frame(width:22,height:22)
                            .foregroundColor(Color.gray)
                    }
                    }.padding(5)
                    .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now()+2){
                        self.alertLink = false
                    }
                }
            }
        }.padding(.horizontal,20)
      }
    func addTraveler(){
        self.temp = friend
        self.temp = self.cotravelers.friends.filter{
            $0.goOnTrip == true
        }
        if(self.temp.count<=5)
        {
            self.cotravelers.items = self.temp
        }
        else
        {
            self.alertFriend = true
            print("akakak")
        }
     }
     }
  
    





