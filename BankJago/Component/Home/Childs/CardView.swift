//
//  CardView.swift
//  BankJago
//
//  Created by Andri Desmana on 25/02/22.
//

import Foundation
import SwiftUI

struct Shortcut: View {
    var body: some View {
        HStack {
            Text("Shortcut")
                .font(.system(size: 20,weight: .bold))
                .padding(.leading,10)
            Spacer()
            Text("Edit")
                .underline(color: Color(#colorLiteral(red: 0.9880294204, green: 0.6864569783, blue: 0.1789853275, alpha: 1)))
                .font(.system(size: 20,weight: .bold))
                .padding(.trailing,10)
            
        }.padding([.bottom,.top],10)
    }
}

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
    }
    
}


struct CardRencanaView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                CardView()
                CardOne()
            }
            HStack{
                CardSaldo()
                CardHouse()
            }
            HStack{
                CardTopUp()
                CardSend()
            }
            HStack{
                CardJago()
                CardAdd()
            }
        }.padding([.leading, .trailing],10)
    }
}

struct AddRencana: View {
    var body: some View {
        HStack {
            Text("Rencankan")
                .font(.system(size: 20,weight: .bold))
                .padding(.leading,10)
            Spacer()
            Text("Lihat")
                .underline(color: Color(#colorLiteral(red: 0.9880294204, green: 0.6864569783, blue: 0.1789853275, alpha: 1)))
                .font(.system(size: 20,weight: .bold))
                .padding(.trailing,10)
            
        }.padding([.bottom,.top],10)
    }
}

struct ButtonAddRencana: View {
    var body: some View {
        HStack{
            Button(action: {}) {
                HStack {
                    Image(systemName: "plus")
                        .frame(width: 45, height: 45)
                        .foregroundColor(Color.white)
                        .background(Color(#colorLiteral(red: 0.9879752994, green: 0.6865406632, blue: 0.154787451, alpha: 1)))
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .padding(.leading,15)
                    Text("Buat Rencana Pembayaran")
                        .font(.system(size: 18))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,5)
                }
            }
            .padding([.top, .bottom],17)
            .foregroundColor(.black)
            .background(Color.white)
            .cornerRadius(15)
            .padding([.leading, .trailing],10)
            .shadow(color: Color.black.opacity(0.1), radius: 6, x: 0, y: 3)
            
        }
    }
}

struct CardView: View {
    var body: some View {
        VStack{
            VStack {
                HStack{
                    Image(systemName: "note.text.badge.plus")
                        .resizable()
                        .foregroundColor(.green)
                        .frame(width: 30, height:30, alignment: .topLeading)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    
                    Spacer()
                    Text("BARU!").font(.headline).foregroundColor(.red)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                }
                
                HStack{
                    Text("Investasi").font(.headline).foregroundColor(.black)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                }
                
                Text("Hubungkan").font(.caption).foregroundColor(.gray)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            }
        }.frame(height: 80)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: 3)
    }
}

struct CardOne: View {
    var body: some View {
        VStack{
            VStack {
                HStack{
                    Image(systemName: "dollarsign.square")
                        .resizable()
                        .foregroundColor(.purple)
                        .frame(width: 30, height:30, alignment: .topLeading)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    
                    Spacer()
                }
                
                HStack{
                    Text("Kantong Utama").font(.headline).foregroundColor(.black)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                }
                
                Text("Rp. 18.000.000").font(.caption).foregroundColor(.gray)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            }
        }.frame(height: 80)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: 3)
    }
}

struct CardHouse: View {
    var body: some View {
        VStack{
            VStack {
                HStack{
                    Image(systemName: "house.fill")
                        .resizable()
                        .foregroundColor(.gray)
                        .frame(width: 30, height:30, alignment: .topLeading)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    
                    Spacer()
                }
                
                HStack{
                    Text("Tabungan Rumah").font(.headline).foregroundColor(.black)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                }
                
                Text("Rp. 98.000.000").font(.caption).foregroundColor(.gray)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            }
        }.frame(height: 80)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: 3)
    }
}

struct CardSaldo: View {
    var body: some View {
        VStack{
            VStack {
                HStack{
                    Image(systemName: "rupeesign.square.fill")
                        .resizable()
                        .foregroundColor(.gray)
                        .frame(width: 30, height:30, alignment: .topLeading)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    
                    Spacer()
                }
                
                HStack{
                    Text("Saldo Saya").font(.headline).foregroundColor(.black)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                }
                
                Text("Rp. 10.000.000").font(.caption).foregroundColor(.gray)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            }
        }.frame(height: 80)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: 3)
    }
}

struct CardTopUp: View {
    var body: some View {
        VStack{
            VStack {
                HStack{
                    Image(systemName: "rectangle.stack.badge.plus")
                        .resizable()
                        .foregroundColor(.primary)
                        .frame(width: 30, height:30, alignment: .topLeading)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    
                    Spacer()
                }
                
                HStack{
                    Text("Top Up e-Wallet").font(.headline).foregroundColor(.black)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                }
            }
        }.frame(height: 80)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: 3)
    }
}

struct CardSend: View {
    var body: some View {
        VStack{
            VStack {
                HStack{
                    Image(systemName: "paperplane.circle.fill")
                        .resizable()
                        .foregroundColor(.orange)
                        .frame(width: 30, height:30, alignment: .topLeading)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    
                    Spacer()
                }
                
                HStack{
                    Text("Kirim & Bayar").font(.headline).foregroundColor(.black)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                }
            }
        }.frame(height: 80)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: 3)
    }
}

struct CardJago: View {
    var body: some View {
        VStack{
            VStack {
                HStack{
                    Image(systemName: "person.3.fill")
                        .resizable()
                        .foregroundColor(.orange)
                        .frame(width: 30, height:30, alignment: .topLeading)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    
                    Spacer()
                }
                
                HStack{
                    Text("JagoRameRame").font(.headline).foregroundColor(.black)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                }
                
                Text("Undang temanmu").font(.caption).foregroundColor(.gray)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            }
        }.frame(height: 80)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: 3)
    }
}

struct CardAdd: View {
    var body: some View {
        VStack{
            VStack {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .frame(width: 40, height:40, alignment: .center)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .foregroundColor(.orange)
                Text("Tambah Shortcut").font(.headline).foregroundColor(.black)
            }
        }.frame(height: 80)
        .padding()
        .background(Color(#colorLiteral(red: 0.9856213927, green: 0.8897795081, blue: 0.6948782206, alpha: 1)))
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: 3)
    }
}

struct CardAdd_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            CardJago()
            CardAdd()
        }
    }
}
