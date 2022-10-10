//
//  CardView.swift
//  banking
//
//  Created by René Piñeiro on 9/10/22.
//

import SwiftUI

struct CardView: View {
    enum Constants {
        static let initialColor = Color(
            red: 183 / 255,
            green: 179 / 255,
            blue: 154 / 255
        )
        static let finalColor = Color(
            red: 207 / 255,
            green: 204 / 255,
            blue: 184 / 255
        )
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: Paddings.larger) {
            HStack {
                Text("VISA")
                    .font(Font.Title.h4)
                    .foregroundColor(AppColors.asphalt)
                
                Text("**** 4013")
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
            
            VStack(alignment: .leading) {
                Text("John Doe Doe")
                    .foregroundColor(AppColors.asphalt)
                    .font(Font.Button.larger)
                
                Text("Owner")
                    .font(Font.label)
                    .foregroundColor(AppColors.grayDark)
            }
            .frame(alignment: .leading)
            .padding(.horizontal, Paddings.normal)
            
            HStack {
                Text("ver movimientos")
                    .font(Font.Button.normal)
                    .foregroundColor(AppColors.asphaltDark)
                
                Spacer()
                
                Text("pagar")
                    .font(Font.Button.normal)
                    .foregroundColor(AppColors.asphaltDark)
            }.padding(.horizontal, Paddings.normal)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(
                LinearGradient(
                    gradient: Gradient(colors: [Constants.initialColor, Constants.finalColor]),
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
        .cornerRadius(10.0)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
