//
//  DashboardViewModel.swift
//  banking
//
//  Created by René Piñeiro on 10/10/22.
//

import SwiftUI

class DashboardViewModel: ObservableObject {
    @Published var isShowingFullScreenView = false
    
    func presentAccountDetailView(_ accountNumber: String) {
        isShowingFullScreenView.toggle()
    }
    
    func dismissAccountDetailView() {
        isShowingFullScreenView = false
    }
}
