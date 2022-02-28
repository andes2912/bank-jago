//
//  KantongView.swift
//  BankJago
//
//  Created by Andri Desmana on 25/02/22.
//

import SwiftUI

struct KantongView: View {
    @State var search: String = ""
    @State var tabIndex = 0
    
    
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
            ZStack{
                VStack {
                    
                    //MARK: Header
                    KantongHeader()
                    
                    //MARK: Search
                    KantongSearch(search:$search)
                    
                    //MARK: Top Bar
                    CustomTopTabBar(tabIndex: $tabIndex)
                    
                    if tabIndex  == 0 {
                        KantongSaldo(textSaldo: "Saldo Kantong", isiSaldo: "Rp.8.345.900")
                        KantongListCard()
                    }
                    if tabIndex == 1 {
                        KantongSaldo(textSaldo: "Saldo Saya",isiSaldo: "Rp.4.345.900")
                        KantongListCardSaya()
                    }
                    if tabIndex == 2 {
                        Image(systemName: "giftcard.fill")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.orange)
                            .padding(.top,40)
                        
                        Text("Kamu belum membagikan Kantong atau gabung ke Kantong pengguna lain.")
                            .font(.caption)
                            .foregroundColor(.gray)
                            .padding(.top,40)
                    }
                    if tabIndex == 3 {
                        Image(systemName: "note.text.badge.plus")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.orange)
                            .padding(.top,40)
                        
                        Text("Kamu bisa menambahkan Kantong baru disini.")
                            .font(.caption)
                            .foregroundColor(.gray)
                            .padding(.top,40)
                    }
                    
                    Spacer()
                }
            }
            
        }.background(RadialGradient(gradient: Gradient(colors: [.orange, .white]), center: .topTrailing, startRadius: 0, endRadius: 200))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}



struct KantongView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            KantongView()
        }
    }
}

