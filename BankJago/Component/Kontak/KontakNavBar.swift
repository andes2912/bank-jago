//
//  KontakNavBar.swift
//  BankJago
//
//  Created by Andri Desmana on 26/02/22.
//

import SwiftUI

struct KontakTopTabBar: View {
    @Binding var tabIndex: Int
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                TabBarButton(text: "Semua", isSelected: .constant(tabIndex == 0))
                    .onTapGesture { onButtonTapped(index: 0) }
                TabBarButton(text: "Favorite", isSelected: .constant(tabIndex == 1))
                    .onTapGesture { onButtonTapped(index: 1) }
                TabBarButton(text: "Bank", isSelected: .constant(tabIndex == 2))
                    .onTapGesture { onButtonTapped(index: 2) }
                TabBarButton(text: "e-Wallet", isSelected: .constant(tabIndex == 3))
                    .onTapGesture { onButtonTapped(index: 3) }
                Spacer()
            }.padding(10)
        }
    }
    
    private func onButtonTapped(index: Int) {
        withAnimation { tabIndex = index }
    }
}

struct KontakTabBarButton: View {
    let text: String
    @Binding var isSelected: Bool
    var body: some View {
        Text(text)
            .fontWeight(isSelected ? .heavy : .regular)
            .padding(7)
            .font(.custom("Avenir", size: 15))
            .background(isSelected ? Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)) : Color(#colorLiteral(red: 0.999904573, green: 1, blue: 0.9998808503, alpha: 1)))
            .cornerRadius(15)
    }
}

struct KontakTabBarButtonImage: View {
    let image: String
    @Binding var isSelected: Bool
    var body: some View{
        Image(systemName: image)
            .padding(5)
            .font(.custom("Avenir", size: 15))
            .background(isSelected ? Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)) : Color(#colorLiteral(red: 0.999904573, green: 1, blue: 0.9998808503, alpha: 1)))
            .cornerRadius(15)
    }
}

struct KontakEdgeBorder: Shape {

    var width: CGFloat
    var edges: [Edge]

    func path(in rect: CGRect) -> Path {
        var path = Path()
        for edge in edges {
            var x: CGFloat {
                switch edge {
                case .top, .bottom, .leading: return rect.minX
                case .trailing: return rect.maxX - width
                }
            }

            var y: CGFloat {
                switch edge {
                case .top, .leading, .trailing: return rect.minY
                case .bottom: return rect.maxY - width
                }
            }

            var w: CGFloat {
                switch edge {
                case .top, .bottom: return rect.width
                case .leading, .trailing: return self.width
                }
            }

            var h: CGFloat {
                switch edge {
                case .top, .bottom: return self.width
                case .leading, .trailing: return rect.height
                }
            }
            path.addPath(Path(CGRect(x: x, y: y, width: w, height: h)))
        }
        return path
    }
}

extension View {
    func Kontakborder(width: CGFloat, edges: [Edge], color: SwiftUI.Color) -> some View {
        overlay(EdgeBorder(width: width, edges: edges).foregroundColor(color))
    }
}
