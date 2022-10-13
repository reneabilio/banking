//
//  DashbordView.swift
//  banking
//
//  Created by René Piñeiro on 8/10/22.
//

import SwiftUI

struct DashboardView: View {
    @ObservedObject var viewModel = DashboardViewModel()
    
    enum Constants {
        static let backgroundColor = Color(
            red: 239 / 255,
            green: 236 / 255,
            blue: 232 / 255
        )
    }
    
    var body: some View {
        VStack(spacing: 0) {
            DashboardUserSummaryView()
            
            AccountsView(
                onAccountViewTapped: viewModel.presentAccountDetailView
            ).padding(.vertical)
            
            CardsView()
                .padding(.vertical)
            
            Spacer()
            
            DashboardBankDetailsView()
        }
        .background(Constants.backgroundColor)
        .fullScreenCover(isPresented: $viewModel.isShowingFullScreenView) {
            AccountDetailView(
                dismissAction: viewModel.dismissAccountDetailView
            )
        }
    }
}

struct DashboardUserSummaryView: View {
    @State var color = Color(
        red: 42.0/255.0,
        green: 99.0/255.0,
        blue: 245.0/255.0
    )
    
    var body: some View {
        HStack(spacing: Paddings.normal) {
            UserProfileView(
                url: nil,
                name: "John Doe"
            )
            
            Text("Hello John Doe")
                .foregroundColor(Color.white)
                .font(Font.Title.h4)
            
            Spacer()
            
            Image(systemName: "gearshape")
                .resizable()
                .foregroundColor(Color.white)
                .frame(width: 20, height: 20)
            
            Image(systemName: "chevron.down")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.white)
                .frame(width: 15, height: 15)
        }
        .frame(maxWidth: .infinity, maxHeight: 60)
        .padding(.horizontal)
        .background(color)
        .onTapGesture(perform: onTapped)
    }
    
    private func onTapped() {
    }
}

struct DashboardBankDetailsView: View {
    var body: some View {
        VStack(spacing: 0) {
            Divider()
            
            HStack {
                Spacer()
                
                Text("Itaú")
                    .font(Font.label)
                    .foregroundColor(AppColors.asphaltLight)
                
                Image(systemName: "key.viewfinder")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundColor(AppColors.asphalt)
                
                Spacer()
                
            }
            .padding(.top, Paddings.normal)
            .background(AppColors.smoke)
        }
    }
}

struct UserProfileView: View {
    var url: URL?
    var name: String?
    
    var body: some View {
        if url != nil {
            Image(systemName: "person.crop.circle")
                .resizable()
                .foregroundColor(AppColors.asphaltLight)
                .frame(width: 36, height: 36)
                .clipShape(Circle())
        } else {
            Text(name?.first?.uppercased() ?? "")
                .font(Font.Title.h4)
                .foregroundColor(AppColors.asphalt)
                .padding()
                .background(AppColors.smokeDark)
                .clipShape(Circle())
                .overlay(
                    Circle().strokeBorder(AppColors.grayDark, lineWidth: 0.8)
                )
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
