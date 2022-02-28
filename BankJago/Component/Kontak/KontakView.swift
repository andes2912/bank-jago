//
//  KontakView.swift
//  BankJago
//
//  Created by Andri Desmana on 26/02/22.
//

import SwiftUI

struct KontakView: View {
    @State var search: String = ""
    @State var tabIndex = 0
    
    var body: some View {
        ZStack {
            VStack {
                
                //MARK: Header
                KontakHeader()
                
                //MARK: Search
                KontakSearch(search: $search)
                
                //MARK: Tab Bar
                KontakTopTabBar(tabIndex: $tabIndex)
                if tabIndex == 0 {
                    KontakList()
                } else {
                    KontakListFavorite()
                }
            }
            
        }
        .background(RadialGradient(gradient: Gradient(colors: [.orange, .white]), center: .topTrailing, startRadius: 0, endRadius: 200))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}


struct KontakView_Previews: PreviewProvider {
    static var previews: some View {
        KontakView()
    }
}


