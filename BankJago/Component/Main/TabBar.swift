//
//  TabBar.swift
//  BankJago
//
//  Created by Andri Desmana on 25/02/22.
//

import SwiftUI


var tabMenu = [
    "house",
    "archivebox",
    "text.book.closed",
    "creditcard",
    "circle.grid.cross"
]

var tabName = ["Beranda"]

struct TabButtons: View {
    
    var image: String
    
    @Binding var selectedTabs : String
    var body: some View {
        
        Button(action: {selectedTabs = image}) {
            Image(systemName: image)
//                .renderingMode(.template)
                .resizable()
                .foregroundColor(selectedTabs == image ? Color(.orange) : Color.black)
                .frame(width: 25, height: 25, alignment: .center)
                .padding()
        }
    }
    
}

struct TabBar: View {
    
    @State var selectetTabs = "house"
    @State var edge = UIApplication.shared.windows.first?.safeAreaInsets
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)){
            
            TabView(selection: $selectetTabs){
                Home()
                    .tag("house")
                
                KantongView()
                    .tag("archivebox")
                
                KontakView()
                    .tag("text.book.closed")
                
                KartuView()
                    .tag("creditcard")
                
                LainnyaView()
                    .tag("circle.grid.cross")
            }
            
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .ignoresSafeArea(.all, edges: .bottom)
            
            HStack(spacing:0){
                ForEach(tabMenu, id: \.self) { image in
                    TabButtons(image: image, selectedTabs: $selectetTabs)
                    
                    if image != tabMenu.last {
                        Spacer(minLength: 0 )
                    }
                }
            }
            .padding(.horizontal,25)
            .padding(.vertical,5)
            .background(Color.white)
            .clipShape(Capsule())
            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 5, y: 5)
            .shadow(color: Color.black.opacity(0.15), radius: 5, x: -5, y: -5)
            .padding(.horizontal)
            .padding(.bottom,edge!.bottom == 0 ? 20 : 0)

        }
    }
    
}

    
