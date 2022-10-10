//
//  AccountsView.swift
//  banking
//
//  Created by René Piñeiro on 8/10/22.
//

import SwiftUI

struct AccountsView: View {
    let onAccountViewTapped: (String) -> ()
    
    var body: some View {
        VStack(spacing: 0) {
            GeometryReader { reader in
                ScrollView (.horizontal, showsIndicators: false) {
                    LazyHStack {
                        TabView {
                            AccountView(onTapped: onAccountViewTapped)
                                .padding(.horizontal)
                            
                            AccountView(onTapped: onAccountViewTapped)
                                .padding(.horizontal)
                        }
                        .frame(minWidth: reader.size.width)
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    }
                }
            }
        }.frame(height: 200)
    }
}

struct AccountsView_Previews: PreviewProvider {
    static var previews: some View {
        AccountsView(onAccountViewTapped: { _ in })
    }
}
