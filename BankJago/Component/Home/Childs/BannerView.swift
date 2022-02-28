//
//  BannerView.swift
//  BankJago
//
//  Created by Andri Desmana on 25/02/22.
//

import Foundation
import SwiftUI

struct Spotlight: View {
    var body: some View {
        HStack {
            Text("Spotlight hari ini")
                .font(.system(size: 20,weight: .bold))
                .padding(.leading,10)
            Spacer()
        }.padding([.bottom,.top],10)
    }
}

struct KontenBannerSpotlight: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing:20){
                BannerOne()
                BannerTwo()
                BannerTree()
            }.padding([.leading,.trailing],15)
        }.padding(.bottom,15)
    }
}

struct BannerOne: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Image("jagobanner")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 330, height: 200)
                    .clipped()
                    .cornerRadius(15)
            }
        }
    }
}


struct BannerTwo: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Image("jagobanner1")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 330, height: 200)
                    .clipped()
                    .cornerRadius(15)
            }
        }
    }
}

struct BannerTree: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Image("jagobanner2")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 330, height: 200)
                    .clipped()
                    .cornerRadius(15)
            }
        }
    }
}

struct BannerTree_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            BannerOne()
        }
    }
}
