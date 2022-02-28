//
//  SearchView.swift
//  BankJago
//
//  Created by Andri Desmana on 25/02/22.
//

import Foundation
import SwiftUI

struct SearchView: View {
    @Binding var search: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(Color(#colorLiteral(red: 0.9371728301, green: 0.9373074174, blue: 0.9371433854, alpha: 1)))
                .frame( height: 55)
                .padding([.leading, .trailing],10)
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "magnifyingglass")
                        .frame(width: 55, height: 55)
                        .foregroundColor(Color.secondary)
                    TextField("Cari kontan & tagihan", text:$search)
                }
            }.padding([.leading, .trailing],10).padding(.bottom,5)
        }
    }
}
