//
//  AccountDetailsTransactionsListView.swift
//  banking
//
//  Created by René Piñeiro on 10/10/22.
//

import SwiftUI

enum TransactionType {
    case allTrasactions, inTrasactions, outTrasactions
}

struct AccountDetailsTransactionsListView: View {
    @State var selectedTransactionTab = TransactionType.allTrasactions
    
    var body: some View {
        VStack(spacing: 0) {
            AccountDetailsTabTransactionsListView(selectedTransactionTab: $selectedTransactionTab)
            
            Divider()
            
            VStack {
                List {
                    ForEach(1...2, id: \.self) { _ in
                        AccountDetailsTransactionsListItemView(
                            inType: true,
                            currency: "USD",
                            amount: 43,
                            description: "Pago Basket",
                            date: Date()
                        )
                        .listRowSeparator(.hidden)
                        .listRowInsets(EdgeInsets())
                    }
                }.listStyle(PlainListStyle())
            }
        }
    }
    
    private func trasactionTabOpacityWithType(_ transactionType: TransactionType) -> Double {
        return transactionType == selectedTransactionTab ? 1.0 : 0
    }
    
    private func transactionTabTapped(_ transactionType: TransactionType) {
        withAnimation(.easeInOut(duration: 0.1)) {
            selectedTransactionTab = transactionType
        }
    }
}

struct AccountDetailsTabTransactionsListView: View {
    @Binding var selectedTransactionTab: TransactionType
    
    var body: some View {
        AccountDetailsTransactionsTabsView(
            selectedTransactionTab: $selectedTransactionTab
        )
    }
}

struct AccountDetailsTransactionsTabsView: View {
    @Binding var selectedTransactionTab: TransactionType
    
    var body: some View {
        HStack(spacing: 40) {
            AccountDetailsTabView(
                tabName: "all",
                selected: isTrasactionTabSelected(.allTrasactions),
                onTapped: {
                    transactionTabTapped(.allTrasactions)
                }
            )
            
            AccountDetailsTabView(
                tabName: "in",
                selected: isTrasactionTabSelected(.inTrasactions),
                onTapped: {
                    transactionTabTapped(.inTrasactions)
                }
            )
            
            AccountDetailsTabView(
                tabName: "out",
                selected: isTrasactionTabSelected(.outTrasactions),
                onTapped: {
                    transactionTabTapped(.outTrasactions)
                }
            )
        }
        .padding(.top, Paddings.normal)
        .padding(.horizontal)
        .background(Color.white)
    }
    
    private func isTrasactionTabSelected(_ transactionType: TransactionType) -> Bool {
        return transactionType == selectedTransactionTab
    }
    
    private func transactionTabTapped(_ transactionType: TransactionType) {
        withAnimation(.easeInOut(duration: 0.1)) {
            selectedTransactionTab = transactionType
        }
    }
}

struct AccountDetailsTabView: View {
    let tabName: String
    let selected: Bool
    let onTapped: () -> ()
    
    var body: some View {
        Button(action: onTapped) {
            VStack(alignment: .center) {
                Text(tabName)
                    .foregroundColor(AppColors.asphalt)
                    .font(Font.Button.normal)
                
                Rectangle()
                    .fill(AppColors.grayDark)
                    .frame(height: 2)
                    .cornerRadius(5.0)
                    .opacity(selected ? 1.0 : 0)
            }
        }
    }
}

struct AccountDetailsTransactionsListView_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetailsTransactionsListView()
    }
}
