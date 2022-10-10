//
//  AccountDetailsSummaryView.swift
//  banking
//
//  Created by René Piñeiro on 10/10/22.
//

import SwiftUI

struct AccountDetailsSummaryView: View {
    let accountNumber: String
    let currency: String
    let amount: String
    
    var body: some View {
        HStack(spacing: 40) {
            VStack(alignment: .leading, spacing: Paddings.normal) {
                Text("cuenta corriente:")
                    .foregroundColor(AppColors.asphalt)
                    .font(Font.Title.h6)
                
                Text("# \(accountNumber)")
                    .foregroundColor(AppColors.asphalt)
                    .font(Font.Paragraph.normal)
            }
            
            VStack(alignment: .leading, spacing: Paddings.normal) {
                Text("amount:")
                    .foregroundColor(AppColors.asphalt)
                    .font(Font.Title.h6)
                
                Text("\(currency) \(amount)")
                    .foregroundColor(AppColors.success)
                    .font(Font.Paragraph.larger)
            }
            
            Spacer()
        }
        .padding(.vertical, Paddings.normal)
        .padding(.horizontal)
        .background(Color.white)
    }
}

struct AccountDetailsSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetailsSummaryView(
            accountNumber: "9701414",
            currency: "USD",
            amount: "2000"
        )
    }
}
