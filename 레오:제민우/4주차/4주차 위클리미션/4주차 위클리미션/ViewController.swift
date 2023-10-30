//
//  ViewController.swift
//  4주차 위클리미션
//
//  Created by 제민우 on 10/30/23.
//

import UIKit

final class ViewController: UIViewController {
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSubviews()
        configureLayout()
        configureAddTarget()
    }
}

// MARK: Configure AddTarget

extension ViewController {
    
    private func configureAddTarget() {
        loginButton.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        signUpButton.addTarget(self, action: #selector(didTapSignUpButton), for: .touchUpInside)
    }
    
    @objc func didTapLoginButton(_ sender: UIButton) {
        
        let savedID = UserDefaults.standard.string(forKey: "userID") ?? ""
        let savedPW = UserDefaults.standard.string(forKey: "userPW") ?? ""
        
        guard let enteredID = idTextField.text, !enteredID.isEmpty,
              let enteredPW = pwTextField.text, !enteredPW.isEmpty else {
            statusLabel.text = "아이디와 비밀번호를 모두 입력하세요"
            return
        }
        
        if savedID == enteredID && savedPW == enteredPW {
            UserDefaults.standard.set(true, forKey: "isUserLogIn")
            statusLabel.text = "정상적으로 로그인 되었습니다"
            
            // 로그인 후 작동
            let nextVC = NextViewController()
            nextVC.userID = enteredID
            nextVC.userPW = enteredPW
            navigationController?.pushViewController(nextVC, animated: true)
            
        } else if savedID == enteredID && savedPW != enteredPW {
            UserDefaults.standard.set(false, forKey: "isUserLogIn")
            statusLabel.text = "비밀번호를 확인해주세요"
        } else {
            UserDefaults.standard.set(false, forKey: "isUserLogIn")
            statusLabel.text = "아이디를 확인해주세요"
        }
                
    }
    
    @objc func didTapSignUpButton(_ sender: UIButton) {
        let savedID = UserDefaults.standard.string(forKey: "userID") ?? ""
        
        guard let enteredID = idTextField.text, !enteredID.isEmpty,
              let enteredPW = pwTextField.text, !enteredPW.isEmpty else {
            statusLabel.text = "아이디와 비밀번호를 모두 입력하세요"
            return
        }
        
        if savedID == enteredID {
            UserDefaults.standard.setValue(false, forKey: "isUserLogIn")
            statusLabel.text = "존재하는 ID 입니다."
        } else {
            UserDefaults.standard.set(true, forKey: "isUserLogIn")
            UserDefaults.standard.set(enteredID, forKey: "userID")
            UserDefaults.standard.set(enteredPW, forKey: "userPW")
            statusLabel.text = "회원가입 완료"
        }
    }
}

// MARK: Configure Layout

extension ViewController {
    
    private func configureSubviews() {
        [statusLabel, idTextField, pwTextField, loginButton, signUpButton].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
    }
    
    private func configureLayout() {
        
        let safeArea = view.safeAreaLayoutGuide
        let signUpButtonBottomConstraint = signUpButton.bottomAnchor.constraint(
            greaterThanOrEqualTo: safeArea.bottomAnchor,
            constant: -150
        )
        
        signUpButtonBottomConstraint.priority = .defaultLow

        NSLayoutConstraint.activate([
            statusLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            statusLabel.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 100),
            
            idTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            idTextField.topAnchor.constraint(equalTo: statusLabel.topAnchor, constant: 125),
            idTextField.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 50),
            
            pwTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pwTextField.topAnchor.constraint(equalTo: idTextField.bottomAnchor, constant: 10),
            pwTextField.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 50),
            
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: pwTextField.bottomAnchor, constant: 100),
            loginButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 50),
            
            signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
            signUpButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 50),
        ])
    }
}
