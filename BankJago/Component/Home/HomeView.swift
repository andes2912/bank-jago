//
//  HomeView.swift
//  BankJago
//
//  Created by Andri Desmana on 25/02/22.
//

import Foundation
import SwiftUI

struct Home: View {
    @State var search: String = ""
    var body: some View {
            ScrollView(.vertical, showsIndicators: false){
                VStack {
                    
                    //MARK: Header
                    HeaderView()

                    //MARK: Search
                    SearchView(search: $search)

                    //MARK: Spotlight
                    Spotlight()

                    //MARK: Banner Spotlight
                    KontenBannerSpotlight()

                    //MARK: Add Rencana
                    AddRencana()

                    //MARK: Button Add Rencana
                    ButtonAddRencana()

                    //MARK: Shorcut
                    Shortcut()

                   //MARK: Card Rencana
                    CardRencanaView()
                    Spacer()
                }
                
                .background(RadialGradient(gradient: Gradient(colors: [.orange, .white]), center: .topTrailing, startRadius: 5, endRadius: 300))
        }
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea([.top])
        
    }
}



