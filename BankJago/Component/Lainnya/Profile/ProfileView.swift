//
//  ProfileView.swift
//  BankJago
//
//  Created by Andri Desmana on 26/02/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
            VStack{
                
                //Mark: Header
                ProfileHeader()
                
                //MARK: Foto Profile
                ProfileFoto()
                
                //MARK: Card Info Profile
                ProfileCard()
                
                //MARK: Detail Info Profile
                ProfileDetail()
                
                Spacer()
            }
            .background(RadialGradient(gradient: Gradient(colors: [.orange, .white]), center: .topTrailing, startRadius: 5, endRadius: 300))
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea([.top])
    }
}

struct ProfileHeader: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        HStack{
            HStack {
                Button(
                    action: { presentationMode.wrappedValue.dismiss() }
                ) {
                    Image(systemName: "arrow.backward")
                    .font(.custom("", size: 22))
                }
                Text("Profile Saya")
                    .font(.custom("", size: 20))
                    .bold()
                
            }
            Spacer()
            Image(systemName: "pencil")
                .font(.custom("", size: 22))
        }
        .padding(10)
        .padding(.top,40)
    }
}

struct ProfileFoto: View {
    var body: some View {
        VStack{
            Image("me")
                .resizable()
                .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            Text("ANDRI DESMANA PUTRA \n WIJAYA")
                .bold()
                .multilineTextAlignment(.center)
                .font(.custom("", size: 24))
                
            Text("andridesmana29@outlook.com")
                .foregroundColor(.gray)
            
            Text("+62 8xxxxxxxxxx")
                .foregroundColor(.gray)
        }
        .padding([.bottom,.top],40)
    }
}

struct ProfileCard: View {
    var body: some View {
        VStack {
            HStack{
                Text("Nomor Kantong Utama")
                    .font(.custom("", size: 15))
                    .foregroundColor(.white)
                Spacer()
                HStack{
                    Text("0292 9282 02910")
                        .font(.system(size: 15,weight: .bold))
                        .foregroundColor(.white)
                    Image(systemName: "rectangle.on.rectangle")
                        .font(.system(size: 15,weight: .bold))
                        .foregroundColor(.white)
                }
                
                
            }
            .padding(10)
            
            HStack{
                Text("Status Akun Jago")
                    .font(.custom("", size: 15))
                    .foregroundColor(.white)
                Spacer()
                Text("Aktif")
                    .font(.system(size: 15,weight: .bold))
                    .foregroundColor(.white)
            }
            .padding(10)
            
            HStack{
                Text("JagoID")
                    .font(.custom("", size: 15))
                    .foregroundColor(.white)
                Spacer()
                Text("andes2912")
                    .font(.system(size: 15,weight: .bold))
                    .foregroundColor(.white)
            }
            .padding(10)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(#colorLiteral(red: 0.6478143334, green: 0.01339355949, blue: 0.6738047004, alpha: 1)))
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
        .padding(.all, 10)
        .padding(.bottom,40)
    }
}

struct ProfileDetail: View {
    var body: some View {
        VStack{
            HStack{
                Text("Nama Resmi")
                    .font(.custom("", size: 16))
                    .foregroundColor(.black)
                Image(systemName: "exclamationmark.circle.fill")
                    .font(.custom("", size: 15))
                    .foregroundColor(.orange)
                Spacer()
                Text("ANDRI DESMANA PUTRA \n WIJAYA")
                    .font(.custom("", size: 15))
                    .foregroundColor(.gray)
                
            }
            
            .padding(10)
            Divider().background(Color.gray)
                .padding(10)
            
            HStack{
                Text("Nama Panggilan")
                    .font(.custom("", size: 16))
                    .foregroundColor(.black)
                
                Spacer()
                Text("ANDRI DESMANA PUTRA \n WIJAYA")
                    .font(.custom("", size: 15))
                    .foregroundColor(.gray)
                
            }
            .padding(10)
            Divider().background(Color.gray)
                .padding(10)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Alamat korespindensi")
                        .font(.custom("", size: 16))
                        .foregroundColor(.black)
                        .padding(.bottom,5)
                    Text("Jakarta Selatan, Indonesia, 10292")
                        .font(.custom("", size: 16))
                        .foregroundColor(.gray)
                }
                .padding(10)
                Spacer()
            }
            Divider().background(Color.gray)
                .padding(10)
            
            NavigationLink(destination: PageView()){
                HStack{
                    Text("Dokumen saya")
                        .font(.custom("", size: 16))
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.custom("", size: 16))
                        .foregroundColor(.black)
                }
            }
            .padding(10)
            Divider().background(Color.gray)
                .padding(10)
            
        }
    }
}

struct PageView: View {
    var body: some View {
        Text("Page kosong")
            .edgesIgnoringSafeArea([.top])
    }
    
}
