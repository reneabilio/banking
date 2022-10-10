//
//  AccountDetailView.swift
//  banking
//
//  Created by René Piñeiro on 10/10/22.
//

import SwiftUI

struct AccountDetailView: View {
    let dismissAction: () -> ()
    
    enum Constants {
        static let backgroundColor = Color(
            red: 239 / 255,
            green: 236 / 255,
            blue: 232 / 255
        )
    }
    
    var body: some View {
        VStack(spacing: 0) {
            AccountDetailTitleView(onTapped: dismissAction)
            
            AccountDetailsSummaryView(
                accountNumber: "9701414",
                currency: "USD",
                amount: "2000"
            )
            
            AccountDetailsTransactionsListView()
            
            Spacer()
        }
        .background(Constants.backgroundColor)
    }
}

struct AccountDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetailView(dismissAction: { })
    }
}
