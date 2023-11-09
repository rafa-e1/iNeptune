//
//  ViewController.swift
//  5주차 위클리미션
//
//  Created by 제민우 on 11/9/23.
//

import UIKit

final class LoginViewController: UIViewController {
    
    private let loginView = LoginView()
    
    override func loadView() {
        view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureAddTarget()
    }
}

// MARK: Configure AddTarget

extension LoginViewController {
    
    private func configureAddTarget() {
        loginView.loginButton.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        loginView.signUpButton.addTarget(self, action: #selector(didTapSignUpButton), for: .touchUpInside)
//        loginView.kakaoLoginButton.addTarget(self, action: #selector(didTapKakaoLoginButton), for: .touchUpInside)
    }
    
    @objc func didTapLoginButton(_ sender: UIButton) {
        
        let savedID = UserDefaults.standard.string(forKey: "userID") ?? ""
        let savedPW = UserDefaults.standard.string(forKey: "userPW") ?? ""
        
        guard let enteredID = loginView.idTextField.text, !enteredID.isEmpty,
              let enteredPW = loginView.pwTextField.text, !enteredPW.isEmpty else {
            loginView.statusLabel.text = "아이디와 비밀번호를 모두 입력하세요"
            return
        }
        
        if savedID == enteredID && savedPW == enteredPW {
            UserDefaults.standard.set(true, forKey: "isUserLogIn")
            loginView.statusLabel.text = "정상적으로 로그인 되었습니다"
            
            // 로그인 후 작동
//            let nextVC = NextViewController()
//            nextVC.userID = enteredID
//            nextVC.userPW = enteredPW
//            navigationController?.pushViewController(nextVC, animated: true)
            
        } else if savedID == enteredID && savedPW != enteredPW {
            UserDefaults.standard.set(false, forKey: "isUserLogIn")
            loginView.statusLabel.text = "비밀번호를 확인해주세요"
        } else {
            UserDefaults.standard.set(false, forKey: "isUserLogIn")
            loginView.statusLabel.text = "아이디를 확인해주세요"
        }
                
    }
    
    @objc func didTapSignUpButton(_ sender: UIButton) {
        let savedID = UserDefaults.standard.string(forKey: "userID") ?? ""
        
        guard let enteredID = loginView.idTextField.text, !enteredID.isEmpty,
              let enteredPW = loginView.pwTextField.text, !enteredPW.isEmpty else {
            loginView.statusLabel.text = "아이디와 비밀번호를 모두 입력하세요"
            return
        }
        
        if savedID == enteredID {
            UserDefaults.standard.setValue(false, forKey: "isUserLogIn")
            loginView.statusLabel.text = "존재하는 ID 입니다."
        } else {
            UserDefaults.standard.set(true, forKey: "isUserLogIn")
            UserDefaults.standard.set(enteredID, forKey: "userID")
            UserDefaults.standard.set(enteredPW, forKey: "userPW")
            loginView.statusLabel.text = "회원가입 완료"
        }
    }
    
//    @objc func didTapKakaoLoginButton(_ sender: UIButton) {
//        UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
//                if let error = error {
//                    print(error)
//                }
//                else {
//                    print("loginWithKakaoAccount() success.")
//
//                    //do something
//                    _ = oauthToken
//                }
//            }
//    }
}

