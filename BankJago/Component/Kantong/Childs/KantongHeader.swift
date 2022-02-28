//
//  HeaderView.swift
//  BankJago
//
//  Created by Andri Desmana on 25/02/22.
//

import Foundation
import SwiftUI

struct KantongHeader: View {
    var body: some View{
        VStack{
            HStack{
                Text("Kantong")
                    .font(.system(size: 37, weight: .bold))
                    .foregroundColor(.black)
                Spacer()
                HStack{
                    Image(systemName: "ellipsis")
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                    Image(systemName: "newspaper")
                        .font(.system(size: 25))
                        .foregroundColor(.black)
                }
            }
            .padding([.trailing,.leading],10)
            Spacer()
        }.padding(.top,5)
    }
}
