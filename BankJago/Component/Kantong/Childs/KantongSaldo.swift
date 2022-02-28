//
//  KantongSaldo.swift
//  BankJago
//
//  Created by Andri Desmana on 26/02/22.
//

import Foundation
import SwiftUI

struct KantongSaldo: View {
    let textSaldo: String
    let isiSaldo: String
    
    var body: some View{
        HStack{
            Button(action: {}) {
                Text(textSaldo)
                    .font(.system(size: 18, weight: .bold))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.leading,10)
                Spacer()
                
                HStack{
                    Text(isiSaldo)
                        .underline(color: Color(#colorLiteral(red: 0.9880294204, green: 0.6864569783, blue: 0.1789853275, alpha: 1)))
                        .font(.system(size: 18, weight: .bold))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                    Image(systemName: "eye")
                        .foregroundColor(.orange)
                        .padding(.trailing,10)
                }
            }
            .padding([.top, .bottom],25)
            .foregroundColor(.black)
            .background(Color.white)
            .cornerRadius(15)
            .padding([.leading, .trailing],10)
            .shadow(color: Color.black.opacity(0.1), radius: 6, x: 0, y: 3)
            
        }.padding(.bottom,10)
    }
    
}
