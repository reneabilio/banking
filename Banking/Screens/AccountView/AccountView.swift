//
//  AccountView.swift
//  banking
//
//  Created by René Piñeiro on 8/10/22.
//

import SwiftUI

struct AccountView: View {
    let onTapped: (String) -> ()
    
    var body: some View {
        VStack(alignment: .leading, spacing: Paddings.larger) {
            HStack {
                Text("cuenta corriente")
                    .font(Font.label)
                    .foregroundColor(AppColors.asphalt)
                
                Spacer()
                
                Text("ver más")
                    .font(Font.label)
                    .foregroundColor(AppColors.asphalt)
                
                Image(systemName: "chevron.down")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(AppColors.asphaltLight)
                    .frame(width: 10, height: 10)
            }.padding(.horizontal, Paddings.normal)
            
            Text("John Doe")
                .foregroundColor(AppColors.asphalt)
                .font(Font.Button.larger)
                .padding(.horizontal, Paddings.normal)
            
            Text("saldo disponible")
                .font(Font.Paragraph.normal)
                .foregroundColor(AppColors.grayDark)
                .padding(.horizontal, Paddings.normal)
            
            Text("USD 1,095")
                .font(Font.Title.h4)
                .foregroundColor(AppColors.successDark)
                .padding(.horizontal, Paddings.normal)
            
            HStack {
                Text("ver movimientos")
                    .font(Font.Button.normal)
                    .foregroundColor(AppColors.asphaltLight)
                
                Spacer()
                
                Image(systemName: "square.and.arrow.up")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(AppColors.asphaltLight)
                    .frame(width: 16, height: 16)
            }.padding(.horizontal, Paddings.normal)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.white)
        .cornerRadius(10.0)
        .onTapGesture {
            onTapped("123")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView(onTapped: { _ in })
    }
}
