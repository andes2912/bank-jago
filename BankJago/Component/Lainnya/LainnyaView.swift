//
//  LainnyaView.swift
//  BankJago
//
//  Created by Andri Desmana on 26/02/22.
//

import SwiftUI

struct LainnyaView: View {
    var body: some View {
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
                VStack {
                    
                    //MARK: Header
                    LainnyaHeader()
                    
                    //MARK: Profile
                    LainnyaProfile()
                    
                    //MARK: Info Kuota
                    LainnyaCardKuota()
                    
                    //MARK: Verifikasi Data
                    LainnyaCardVerifData()
                    
                    //MARK: Menu Footer
                    LainnyaMenu()
                    Spacer()
                }
                .background(RadialGradient(gradient: Gradient(colors: [.orange, .white]), center: .topTrailing, startRadius: 5, endRadius: 300))
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea([.top])
        }
}

struct LainnyaView_Previews: PreviewProvider {
    static var previews: some View {
        LainnyaView()
    }
}

struct LainnyaHeader: View {
    var body: some View {
        VStack {
            HStack{
                Text("Lainnya")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                Spacer()
                Image(systemName: "gearshape.fill")
                    .resizable()
                    .frame(width: 35, height: 35)
            }
            .padding([.leading,.trailing],10)
        }
        .padding(.top,5)
    }
}

struct LainnyaProfile: View {
    var body: some View {
        VStack {
            HStack{
                NavigationLink(destination:ProfileView()){
                    Image("me")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 65, height: 65)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                VStack(alignment: .leading) {
                    HStack{
                        Text("ANDRI DESMANA ...")
                            .font(.title)
                            .bold()
                        Spacer()
                        Image(systemName: "chevron.right")
                            .font(.custom("", size: 15))
                    }
                    Text("andridesmana29@outlook.com")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .padding()
        }
    }
}


struct LainnyaCardKuota: View {
    var body: some View {
        ZStack {
            VStack {
                HStack{
                    Text("Kuota Gratis: Febuari 2022")
                        .font(.custom("", size: 15))
                        .bold()
                    Spacer()
                    Image(systemName: "exclamationmark.circle.fill")
                        .font(.custom("", size: 15))
                }
                .padding(10)
                Spacer()
                
                VStack {
                    HStack{
                        Text("Tranfer antar bank & top up e-Wallet")
                            .font(.custom("", size: 15))
                            .bold()
                        Spacer()
                        Text("24/25")
                    }
                    Progress(value: 24, total: 25)
                }
                .padding(10)
                
                Spacer()
                
                VStack {
                    HStack{
                        Text("Tarik tunai di ATM bank lain")
                            .font(.custom("", size: 15))
                            .bold()
                        Spacer()
                        Text("5/5")
                    }
                    Progress(value: 5, total: 5)
                }
                .padding(.bottom,30)
                .padding([.leading,.trailing],10)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
            .padding(.all, 10)
        }
        
    }
}

struct Progress: View {
    let value: Double
    let total: Double
    var body: some View {
        VStack {
            ProgressView(value: value, total: total)
            .accentColor(Color(#colorLiteral(red: 0.7719960809, green: 0.1760252118, blue: 0.7857048512, alpha: 1)))
                .frame(height: 10.0)
            .scaleEffect(x: 1, y: 3, anchor: .center)
                .clipShape(RoundedRectangle(cornerRadius: 6))
        }
    }
}


struct LainnyaCardVerifData: View {
    var body: some View {
        ZStack {
            VStack {
                NavigationLink(destination: PageView()){
                    HStack{
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color(#colorLiteral(red: 0.8382696509, green: 0.9394961596, blue: 0.7334735394, alpha: 1)))
                        VStack(alignment: .leading){
                            Text("Verifikasi e-mail kamu")
                                .bold()
                                .foregroundColor(.black)
                            Text("Tingkatkan keamanan akun dengan verifikasi alamat \n e-mail")
                                .font(.caption)
                                .bold()
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        
                    }
                }
                .padding(10)
                Divider().background(Color.orange)
                
                HStack{
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(#colorLiteral(red: 0.8382696509, green: 0.9394961596, blue: 0.7334735394, alpha: 1)))
                    VStack(alignment: .leading){
                        Text("Buat JagoID kamu")
                            .bold()
                            .foregroundColor(.black)
                        Text("Sebagai ganti nomor Kantong Utama")
                            .font(.caption)
                            .bold()
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    
                }
                .padding(10)
                Divider().background(Color.orange)
                
                HStack{
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.gray)
                    VStack(alignment: .leading){
                        Text("Masukan data NPWP")
                            .bold()
                            .foregroundColor(.red)
                        Text("Untuk keperluan pajak dan regulasi")
                            .font(.caption)
                            .bold()
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    
                }
                .padding(10)

            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.white)
            .padding(.all, 10)
            .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
            .padding(10)
            
        }
        
    }
}

struct LainnyaMenu: View {
    var body: some View{
        VStack {
            NavigationLink(destination: PageView()){
                HStack{
                    Image(systemName: "apps.iphone")
                        .resizable()
                        .frame(width: 20, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.orange)
                
                    VStack(alignment: .leading){
                        Text("Analis Pengeluaran")
                        Divider().background(Color.gray)
                    }
                    Spacer()
                }
            }
            .padding(10)
            
            HStack{
                Image(systemName: "note.text.badge.plus")
                    .resizable()
                    .frame(width: 20, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.orange)
            
                VStack(alignment: .leading){
                    Text("Rencanakan")
                    Divider().background(Color.gray)
                }
                
                Spacer()
            }
            .padding(10)
            
            HStack{
                Image(systemName: "mail.stack.fill")
                    .resizable()
                    .frame(width: 20, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.orange)
            
                VStack(alignment: .leading){
                    Text("Kirim & Bayar")
                    Divider().background(Color.gray)
                }
                
                Spacer()
            }
            .padding(10)
            
            HStack{
                Image(systemName: "banknote")
                    .resizable()
                    .frame(width: 20, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.orange)
            
                VStack(alignment: .leading){
                    Text("Tagih Uang")
                    Divider().background(Color.gray)
                }
                
                Spacer()
            }
            .padding(10)
            
            HStack{
                Image(systemName: "candybarphone")
                    .resizable()
                    .frame(width: 20, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.orange)
            
                VStack(alignment: .leading){
                    Text("Tanya Jago")
                    Divider().background(Color.gray)
                }
                
                Spacer()
            }
            .padding(10)
            
            HStack{
                Image(systemName: "questionmark.circle")
                    .resizable()
                    .frame(width: 20, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.orange)
            
                VStack(alignment: .leading){
                    Text("FAQ")
                    Divider().background(Color.gray)
                }
                
                Spacer()
            }
            .padding(10)
            
            HStack{
                Image(systemName: "arrow.turn.up.forward.iphone")
                    .resizable()
                    .frame(width: 20, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.orange)
            
                VStack(alignment: .leading){
                    Text("Akhiri Sesi")
                    Divider().background(Color.gray)
                }
                
                Spacer()
            }
            .padding(10)
        }
    }
}



