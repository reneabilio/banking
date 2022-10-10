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
            DashboardUserSummaryView(onTapped: { })
            
            AccountsView(
                onAccountViewTapped: viewModel.presentAccountDetailView
            ).padding(.vertical)
            
            CardsView()
                .padding(.vertical)
            
            Spacer()
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
    let onTapped: () -> ()
    
    var body: some View {
        HStack(spacing: Paddings.normal) {
            UserProfileView(
                url: nil,
                name: "John Doe"
            )
            
            Text("Hello John Doe")
                .foregroundColor(AppColors.asphalt)
                .font(Font.Title.h4)
            
            Spacer()
            
            Image(systemName: "gearshape")
                .resizable()
                .foregroundColor(AppColors.asphalt)
                .frame(width: 15, height: 15)
            
            Image(systemName: "chevron.down")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(AppColors.asphalt)
                .frame(width: 10, height: 10)
        }
        .frame(maxWidth: .infinity, maxHeight: 60)
        .padding(.horizontal)
        .background(Color.white)
        .onTapGesture(perform: onTapped)
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
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
