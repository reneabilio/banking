//
//  AccountDetailsTransactionsListItemView.swift
//  banking
//
//  Created by René Piñeiro on 10/10/22.
//

import SwiftUI

struct AccountDetailsTransactionsListItemView: View {
    let inType: Bool
    let currency: String
    let amount: Int
    let description: String
    let date: Date
    
    var body: some View {
        HStack {
            Image(systemName: iconImageName())
                .foregroundColor(iconImageColor())
            
            VStack {
                Text(description)
                    .font(Font.Paragraph.normal)
                    .foregroundColor(AppColors.asphalt)
                
                Text(date.toString())
                    .font(Font.Paragraph.normal)
                    .foregroundColor(AppColors.grayDark)
            }
            
            Spacer()
            
            Text(minusOrMore())
                .font(Font.Paragraph.normal)
                .foregroundColor(AppColors.asphalt)
            
            Text("\(currency) \(amount)")
                .font(Font.Paragraph.normal)
                .foregroundColor(AppColors.asphalt)
        }.padding()
    }
    
    func iconImageName() -> String {
        return inType ? "arrow.up.square.fill" : "arrow.down.square.fill"
    }
    
    func iconImageColor() -> Color {
        return inType ? AppColors.success : AppColors.alert
    }
    
    func minusOrMore() -> String {
        return inType ? "+" : "-"
    }
}

struct AccountTransactionView_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetailsTransactionsListItemView(
            inType: true,
            currency: "USD",
            amount: 43,
            description: "Pago Basket",
            date: Date()
        )
    }
}
