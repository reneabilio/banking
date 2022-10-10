//
//  CardsView.swift
//  banking
//
//  Created by René Piñeiro on 9/10/22.
//

import SwiftUI

struct CardsView: View {
    var body: some View {
        VStack(spacing: 0) {
            GeometryReader { reader in
                ScrollView (.horizontal, showsIndicators: false) {
                    LazyHStack {
                        TabView {
                            CardView()
                                .padding(.horizontal)
                            
                            CardView()
                                .padding(.horizontal)
                        }
                        .frame(minWidth: reader.size.width)
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    }
                }
            }
        }.frame(height: 165)
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
    }
}
