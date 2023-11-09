//
//  LoginView.swift
//  5주차 위클리미션
//
//  Created by 제민우 on 11/9/23.
//

import UIKit

final class LoginView: UIView {

    let statusLabel: UILabel = {
        let label = UILabel()
        label.text = "로그인을 해주세요"
        label.textColor = .black
        label.font = .systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    let idTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "아이디를 입력하세요"
        textField.textColor = .black
        textField.font = .systemFont(ofSize: 14)
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    let pwTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "비밀번호를 입력하세요"
        textField.isSecureTextEntry = true
        textField.font = .systemFont(ofSize: 14)
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    // 로그인 버튼 탭 -> UserDefaults와 확인
    let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("로그인", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        return button
    }()
    
    // UserDefaults에 데이터 넣기
    let signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("회원가입", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGreen
        return button
    }()
    
    let kakaoLoginButton: UIButton = {
        let button = UIButton()
        button.setTitle("카카오 로그인", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .yellow
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = .white
        configureSubviews()
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: Configure Layout

extension LoginView {
    
    private func configureSubviews() {
        [statusLabel, idTextField, pwTextField, loginButton, signUpButton, kakaoLoginButton].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            addSubview($0)
        }
    }
    
    private func configureLayout() {
        
        let safeArea = safeAreaLayoutGuide
        let signUpButtonBottomConstraint = signUpButton.bottomAnchor.constraint(
            greaterThanOrEqualTo: safeArea.bottomAnchor,
            constant: -150
        )
        
        signUpButtonBottomConstraint.priority = .defaultLow

        NSLayoutConstraint.activate([
            statusLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            statusLabel.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 100),
            
            
            idTextField.centerXAnchor.constraint(equalTo: centerXAnchor),
            idTextField.topAnchor.constraint(equalTo: statusLabel.topAnchor, constant: 125),
            idTextField.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 50),
            
            pwTextField.centerXAnchor.constraint(equalTo: centerXAnchor),
            pwTextField.topAnchor.constraint(equalTo: idTextField.bottomAnchor, constant: 10),
            pwTextField.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 50),
            
            loginButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: pwTextField.bottomAnchor, constant: 100),
            loginButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 50),
            
            signUpButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            signUpButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
            signUpButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 50),
            
            kakaoLoginButton.centerXAnchor.constraint(equalTo: signUpButton.centerXAnchor),
            kakaoLoginButton.topAnchor.constraint(equalTo: signUpButton.bottomAnchor, constant: 10),
            kakaoLoginButton.leadingAnchor.constraint(equalTo: signUpButton.leadingAnchor)
        ])
    }
}
