//
//  LoginViewModel.swift
//  TenthMission
//
//  Created by Rafael on 12/25/23.
//

import Foundation

import KakaoSDKUser

class LoginViewModel: ObservableObject {
    
    @Published var userInfo = UserInfo(id: "", pw: "")
    @Published var isLoggedIn = false {
        didSet {
            UserDefaults.standard.set(isLoggedIn, forKey: "isLoggedIn")
        }
    }
    @Published var registrationSuccess = false
    @Published var loginMessage = ""
    
    init() {
        checkIfLoggedIn()
    }
    
    func login() {
        if let savedUserInfo = UserDefaults.standard.dictionary(forKey: userInfo.id) as? [String: String] {
            if savedUserInfo["pw"] == userInfo.pw {
                isLoggedIn = true
                loginMessage = "로그인 성공!"
            } else {
                loginMessage = "비밀번호가 일치하지 않습니다."
            }
        } else {
            loginMessage = "존재하지 않는 아이디입니다."
        }
    }
    
    func kakaoLogin() {
        if UserApi.isKakaoTalkLoginAvailable() {
            // 카카오톡 앱을 통한 로그인
            UserApi.shared.loginWithKakaoTalk { [weak self] (oauthToken, error) in
                if let error = error {
                    DispatchQueue.main.async {
                        self?.loginMessage = "카카오 로그인 실패: \(error.localizedDescription)"
                    }
                } else {
                    DispatchQueue.main.async {
                        self?.isLoggedIn = true
                        UserDefaults.standard.set(true, forKey: "isKakaoLoggedIn")
                        self?.loginMessage = "카카오 로그인 성공!"
                    }
                }
            }
        } else {
            // 카카오 계정을 통한 로그인
            UserApi.shared.loginWithKakaoAccount { [weak self] (oauthToken, error) in
                if let error = error {
                    DispatchQueue.main.async {
                        self?.loginMessage = "카카오 로그인 실패: \(error.localizedDescription)"
                    }
                } else {
                    DispatchQueue.main.async {
                        self?.isLoggedIn = true
                        UserDefaults.standard.set(true, forKey: "isKakaoLoggedIn")
                        self?.loginMessage = "카카오 로그인 성공!"
                    }
                }
            }
        }
    }
    
    func register() {
        if UserDefaults.standard.object(forKey: userInfo.id) == nil {
            UserDefaults.standard.setValue(["id": userInfo.id, "pw": userInfo.pw], forKey: userInfo.id)
            registrationSuccess = true
            loginMessage = "회원가입 완료"
        } else {
            loginMessage = "이미 존재하는 아이디입니다."
        }
    }
    
    private func checkIfLoggedIn() {
        isLoggedIn = UserDefaults.standard.bool(forKey: "isLoggedIn")
    }
    
}
