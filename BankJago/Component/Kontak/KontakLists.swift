//
//  KontakLists.swift
//  BankJago
//
//  Created by Andri Desmana on 26/02/22.
//

import SwiftUI

struct KontakListFavorite: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                KontakSemua(
                    inisialText: "AD", nameText: "ANDRI DESMANA PUTRA WIJAYA", bankText: "BCA - 0920220220"
                )
                
                KontakSemua(
                    inisialText: "AP", nameText: "ARIYA PANGGA", bankText: "BNI - 092022S9S20"
                )
                
                KontakSemua(
                    inisialText: "FA", nameText: "FIKRI AKBAR", bankText: "BCA - 0920220732"
                )
                
                KontakSemua(
                    inisialText: "AP", nameText: "ARIYA PANGGA", bankText: "BNI - 092022S9S20"
                )
                
                
            }
        }
    }
    
}

struct KontakList: View {
    var body: some View{
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                KontakSemua(
                    inisialText: "AD", nameText: "ANDRI DESMANA PUTRA WIJAYA", bankText: "BCA - 0920220220"
                )
                
                KontakSemua(
                    inisialText: "AP", nameText: "ARIYA PANGGA", bankText: "BNI - 092022S9S20"
                )
                
                KontakSemua(
                    inisialText: "FA", nameText: "FIKRI AKBAR", bankText: "BCA - 0920220732"
                )
                
                KontakSemua(
                    inisialText: "AP", nameText: "ARIYA PANGGA", bankText: "BNI - 092022S9S20"
                )
                
                KontakSemua(
                    inisialText: "AA", nameText: "ALVINA ANGGI", bankText: "BCA - 0920220732"
                )
                
                KontakSemua(
                    inisialText: "EZ", nameText: "EKKY ZAINUL ARIFIN", bankText: "MANDIRI - 8282872928"
                )
                
                KontakSemua(
                    inisialText: "RA", nameText: "RIKO ARAFI", bankText: "BRI - 7272819191"
                )
                
                KontakSemua(
                    inisialText: "NA", nameText: "NASRURI AJI", bankText: "BCA - 72672829272"
                )
            }
        }
    }
    
}


struct KontakSemua: View {
    let inisialText: String
    let nameText: String
    let bankText: String
    
    var body: some View{
        HStack {
            VStack(alignment: .leading) {
                HStack{
                    Text(inisialText)
                        .bold()
                        .foregroundColor(.white)
                        .frame(width: 45, height: 45)
                        .background(Color.orange)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    VStack(alignment: .leading){
                        Text(nameText)
                            .bold()
                            .font(.custom("", size: 18))
                        Text(bankText)
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }
                .padding(.top,5)
                .padding([.leading,.trailing],10)
            }
        }
    }
    
}
