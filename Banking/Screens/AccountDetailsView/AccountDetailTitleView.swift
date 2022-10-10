//
//  AccountDetailTitleView.swift
//  banking
//
//  Created by René Piñeiro on 10/10/22.
//

import SwiftUI

struct AccountDetailTitleView: View {
    let onTapped: () -> ()
    
    var body: some View {
        VStack {
            HStack(spacing: Paddings.small) {
                HStack {
                    Button(action: onTapped) {
                        Image(systemName: "chevron.left")
                            .font(Font.Button.normal)
                            .foregroundColor(AppColors.asphalt)
                    }
                    .frame(width: 24, height: 24)
                    Spacer()
                }
                
                Text("transactions")
                    .font(Font.Paragraph.normal)
                    .foregroundColor(AppColors.asphalt)
                    .layoutPriority(1)
                
                HStack {
                    Spacer()
                    Text("")
                }
            }
            .padding(.bottom, Paddings.smallest)
            .padding(.leading)
            
            Divider()
        }
        .background(Color.white)
    }
}

struct AccountDetailTitleView_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetailTitleView(onTapped: { })
    }
}
