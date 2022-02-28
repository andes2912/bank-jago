//
//  KontakHeader.swift
//  BankJago
//
//  Created by Andri Desmana on 26/02/22.
//

import SwiftUI

struct KontakHeader: View {
    var body: some View {
        VStack{
            HStack{
                Text("Kontak")
                    .font(.system(size: 37, weight: .bold))
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: "plus")
                    .font(.system(size: 30))
                    .foregroundColor(.black)
            }
            .padding([.trailing,.leading],10)
        }.padding(.top,5)
    }
}

