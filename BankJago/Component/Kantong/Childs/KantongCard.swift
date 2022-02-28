//
//  KantongCard.swift
//  BankJago
//
//  Created by Andri Desmana on 26/02/22.
//

import Foundation
import SwiftUI

struct KantongListCard: View {
    var body: some View {
        HStack{
            KantongCard(
                iconCard: "dollarsign.square", iconColor: Color(#colorLiteral(red: 0.8211190104, green: 0.71805197, blue: 0.3931971192, alpha: 1)), textCard1: "Kantong Utama", textCard2: "Rp. 4.206.506", textCard3: "Kantong Utama", bgColor: Color(#colorLiteral(red: 0.4818589091, green: 0.4639515281, blue: 0.7240403891, alpha: 1))
            )
            KantongCard(
                iconCard: "creditcard.fill", iconColor: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), textCard1: "Gopay", textCard2: "Rp. 2.206.506", textCard3: "Kantong e-Wallet", bgColor: Color(#colorLiteral(red: 0, green: 0.677456975, blue: 0.8362118602, alpha: 1))
            )
        }
        
        HStack{
            KantongCard(
                iconCard: "house", iconColor: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), textCard1: "Tabungan Rumah", textCard2: "Rp. 200.206.506", textCard3: "Kantong Nabung", bgColor: Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
            )
            KantongCard(
                iconCard: "aspectratio.fill", iconColor: Color(#colorLiteral(red: 0.8211190104, green: 0.71805197, blue: 0.3931971192, alpha: 1)), textCard1: "Kantong Bersama", textCard2: "Rp. 12.206.506", textCard3: "Kantong Bersama", bgColor: Color(#colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1))
            )
        }
        
    }
}

struct KantongListCardSaya: View {
    var body: some View{
        HStack{
            KantongCard(
                iconCard: "house", iconColor: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), textCard1: "Tabungan Rumah", textCard2: "Rp. 200.206.506", textCard3: "Kantong Nabung", bgColor: Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
            )
            KantongCard(
                iconCard: "aspectratio.fill", iconColor: Color(#colorLiteral(red: 0.8211190104, green: 0.71805197, blue: 0.3931971192, alpha: 1)), textCard1: "Kantong Bersama", textCard2: "Rp. 12.206.506", textCard3: "Kantong Bersama", bgColor: Color(#colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1))
            )
        }
    }
}

struct KantongCard: View {
    let iconCard: String
    let iconColor: Color
    let textCard1: String
    let textCard2: String
    let textCard3: String
    let bgColor: Color
    var body: some View{
        VStack{
            VStack(alignment: .leading) {
                Image(systemName:iconCard)
                    .resizable()
                    .foregroundColor(iconColor)
                    .frame(width: 35, height:35)
                
                Spacer()
                
                Text(textCard1)
                    .font(.headline)
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .frame(alignment: .bottomLeading)
                Text(textCard2)
                    .font(.headline)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                Text(textCard3)
                    .font(.caption)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            }
        }
        .frame(minWidth: 150,minHeight: 130)
        .padding()
        .background(bgColor)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: 3)
    }
    
}

