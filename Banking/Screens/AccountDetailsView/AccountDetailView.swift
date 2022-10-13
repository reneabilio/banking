//
//  AccountDetailView.swift
//  banking
//
//  Created by René Piñeiro on 10/10/22.
//

import SwiftUI

struct AccountDetailView: View {
    let dismissAction: () -> ()
    
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
    }
}

struct AccountDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetailView(dismissAction: { })
    }
}
