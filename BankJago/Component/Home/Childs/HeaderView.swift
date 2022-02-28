//
//  HeaderView.swift
//  BankJago
//
//  Created by Andri Desmana on 25/02/22.
//

import Foundation
import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack{
                    Text("Selamat malam, ANDRI DESMANA PUTRA WIJAYA").font(.system(size: 12, weight: .bold, design: .rounded)).foregroundColor(Color.gray)
                }.padding(.leading,10)
                HStack{
                    
                    Image("jagologo")
                        .resizable().frame(width: 120, height: 40)
                    HStack{
                        Spacer()
                        NavigationLink(destination: ProfileView() ){
                                Image("me")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        }
                        
                        Image(systemName: "bell").resizable().frame(width: 22, height: 28)
                            .padding(.trailing,10)
                    }
                }.padding(.leading,10)
            }.padding(.top,5)
        }
    }
}
