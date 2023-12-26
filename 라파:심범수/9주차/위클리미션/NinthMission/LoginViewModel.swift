//
//  LoginViewModel.swift
//  NinthMission
//
//  Created by Rafael on 12/24/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var userInfo = UserInfo(id: "", pw: "")
    @Published var isLoggedIn = false
    @Published var registrationSuccess = false
    @Published var loginMessage = ""
    
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
    
    func register() {
        if UserDefaults.standard.object(forKey: userInfo.id) == nil {
            UserDefaults.standard.setValue(["id": userInfo.id, "pw": userInfo.pw], forKey: userInfo.id)
            registrationSuccess = true
            loginMessage = "회원가입 완료"
        } else {
            loginMessage = "이미 존재하는 아이디입니다."
        }
    }
    
}
