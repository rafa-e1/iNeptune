//
//  LoginView.swift
//  NinthMission
//
//  Created by Rafael on 12/24/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        VStack(spacing: 10) {
            TextField("아이디를 입력해주세요.", text: $viewModel.userInfo.id)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(.none)
                .disableAutocorrection(true)
            
            SecureField("비밀번호를 입력해주세요.", text: $viewModel.userInfo.pw)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            if viewModel.isLoggedIn {
                Text("로그인 성공!")
            } else {
                FilledButton(title: "로그인") {
                    viewModel.login()
                }
                
                FilledButton(title: "회원가입") {
                    viewModel.register()
                }
                
                if !viewModel.loginMessage.isEmpty {
                    Text(viewModel.loginMessage)
                        .foregroundColor(.red)
                }
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    LoginView()
}
