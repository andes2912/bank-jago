//
//  ContentView.swift
//  BankJago
//
//  Created by Andri Desmana on 25/02/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            TabBar()
                .navigationBarHidden(true)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
        }
    }
}


//var body: some View {
//    ZStack {
//        TabView{
//            Home()
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Beranda")
//                }
//            KantongView()
//                .tabItem {
//                    Image(systemName: "archivebox")
//                    Text("Kantong")
//                }
//            KontakView()
//                .tabItem {
//                    Image(systemName: "text.book.closed")
//                    Text("Kontak")
//                }
//            Home()
//                .tabItem {
//                    Image(systemName: "creditcard.circle")
//                    Text("Kartu")
//                }
//            ProfileView()
//                .tabItem {
//                    Image(systemName: "ellipsis")
//                    Text("Lainnya")
//                }
//        }
//        .accentColor(.orange)
//    }
//    
//}
//
//}
