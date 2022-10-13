//
//  LoginView.swift
//  banking
//
//  Created by René Piñeiro on 13/10/22.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    enum Constants {
        static let backgroundColor = Color(
            red: 236 / 255,
            green: 243 / 255,
            blue: 249 / 255
        )
        static let primaryBlueApp = Color(
            red: 42.0/255.0,
            green: 99.0/255.0,
            blue: 245.0/255.0
        )
        static let horizontalPadding = 50.0
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Image("Bank1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, Paddings.largest)
            
            VStack(spacing: 40) {
                HStack {
                    Text("Login")
                        .foregroundColor(AppColors.asphalt)
                        .font(Font.Title.h1)
                    
                    Spacer()
                }
                
                VStack(spacing: 30) {
                    VStack(spacing: Paddings.small) {
                        TextField("Email", text: $email)
                            .foregroundColor(AppColors.asphalt)
                            .font(Font.label)
                            .colorMultiply(Constants.backgroundColor)
                        
                        Divider()
                    }
                    
                    VStack(spacing: Paddings.small) {
                        HStack {
                            SecureField("Password", text: $password)
                                .foregroundColor(AppColors.asphalt)
                                .font(Font.label)
                                .colorMultiply(Constants.backgroundColor)
                            
                            Image(systemName: "eye.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .foregroundColor(AppColors.gray)
                        }
                        
                        Divider()
                    }
                }
                
                
                VStack(spacing: 0) {
                    Button(action: onLoginTapped) {
                        Text("LOGIN")
                            .foregroundColor(Color.white)
                            .font(Font.Button.normal)
                            .frame(maxWidth: .infinity, maxHeight: 50)
                            .background(Constants.primaryBlueApp)
                            .cornerRadius(25.0)
                    }
                    
                    Button(action: onLoginTapped) {
                        Text("Forgot your password?")
                            .font(Font.Button.normal)
                            .frame(maxWidth: .infinity, maxHeight: 50)
                    }
                }
                
                Spacer()
                
                HStack(spacing: Paddings.normal) {
                    Text("Contact us?")
                        .foregroundColor(AppColors.asphaltLight)
                        .font(Font.Paragraph.normal)
                    
                    Button(action: onLoginTapped) {
                        Text("Click here")
                            .font(Font.Button.normal)
                    }
                }
                
            }.padding(.horizontal, Constants.horizontalPadding)
            
            Spacer()
        }
        .background(Constants.backgroundColor)
    }
    
    private func onLoginTapped() {
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
