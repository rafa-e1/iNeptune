//
//  LoginView.swift
//  TenthMission
//
//  Created by Rafael on 12/25/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                TextField("아이디를 입력해주세요.", text: $viewModel.userInfo.id)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                
                SecureField("비밀번호를 입력해주세요.", text: $viewModel.userInfo.pw)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                if viewModel.isLoggedIn {
                    Text("로그인 성공!")
                        .navigationDestination(isPresented: $viewModel.isLoggedIn) {
                            ArticleView()
                                .navigationBarBackButtonHidden()
                        }
                } else {
                    FilledButton(
                        title: "로그인",
                        action: viewModel.login,
                        titleColor: .white,
                        backgroundColor: .blue
                    )
                    
                    FilledButton(
                        title: "카카오 로그인",
                        action: viewModel.kakaoLogin,
                        titleColor: .black,
                        backgroundColor: .yellow
                    )
                    
                    FilledButton(
                        title: "회원가입",
                        action: viewModel.register,
                        titleColor: .white,
                        backgroundColor: .black
                    )
                    
                    if !viewModel.loginMessage.isEmpty {
                        Text(viewModel.loginMessage)
                            .foregroundColor(.red)
                    }
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    LoginView()
}
