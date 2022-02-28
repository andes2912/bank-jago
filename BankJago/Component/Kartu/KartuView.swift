//
//  KartuView.swift
//  BankJago
//
//  Created by Andri Desmana on 27/02/22.
//

import SwiftUI

struct KartuView: View {
    var body: some View {
        VStack{
            //MARK: Header
            KartuHeader()
            
            //MARK: Kartu
            KartuCard()
            Spacer()
        }
        .background(RadialGradient(gradient: Gradient(colors: [.orange, .white]), center: .topTrailing, startRadius: 5, endRadius: 300))
    }
}

struct KartuView_Previews: PreviewProvider {
    static var previews: some View {
        KartuView()
    }
}


struct KartuHeader: View {
    var body: some View {
        VStack{
            HStack{
                Text("Kartu")
                    .font(.system(size: 37, weight: .bold))
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: "plus")
                    .font(.system(size: 30))
                    .foregroundColor(.black)
            }
            .padding([.trailing,.leading],10)
        }
        .padding(.top,5)
        .padding(.bottom,80)
    }
}

struct KartuCard: View {
    var body: some View {
        HStack{
            Text("JagoKu")
                .font(.system(size: 16,weight: .medium))
                .foregroundColor(.gray)
                .padding(.leading,65)
            Spacer()
        }
        VStack(alignment: .leading){
            HStack{
                Text("VISA")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.white)
                    .padding()
                Spacer()
            }
            .padding(.bottom,80)
            
            HStack(alignment: .lastTextBaseline){
                Spacer()
                Text("ANDRI \nDESMANA P W")
                    .font(.system(size: 15, weight: .bold))
                    .foregroundColor(.white)
                    .padding()
            }
           
            Spacer()
            HStack{
                Spacer()
                Image("jagowhite")
                    .resizable().frame(width: 110, height: 35)
                    .foregroundColor(.white)
                    .padding()
            }
           
        }
        .frame(width: 270, height: 400)
        .background(Color(#colorLiteral(red: 0.9879752994, green: 0.6865406632, blue: 0.154787451, alpha: 1)))
        .cornerRadius(20)
        
        HStack{
            Image(systemName: "personalhotspot")
            Text("JagoKu")
                .font(.system(size: 15, weight: .bold))
                .foregroundColor(.gray)
            Spacer()
            Text("Rp. 4.000.000")
                .font(.system(size: 15, weight: .bold))
            
        }
        .frame(width: 270)
    }
    
}
