//
//  LoginViewController.swift
//  FourthMission
//
//  Created by Rafael on 10/20/23.
//

import SwiftUI
import UIKit

class LoginViewController: UIViewController {
    
    private lazy var idTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "아이디를 입력해주세요."
        textField.borderStyle = .roundedRect
        textField.autocorrectionType = .no
        textField.autocapitalizationType = .none
        textField.becomeFirstResponder()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var pwTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "비밀번호를 입력해주세요."
        textField.borderStyle = .roundedRect
        textField.autocorrectionType = .no
        textField.autocapitalizationType = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var textFields: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [idTextField, pwTextField])
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .systemBlue
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.setAttributedTitle(
            NSAttributedString(
                string: "로그인",
                attributes: [
                    .font: UIFont.systemFont(
                        ofSize: 17.0,
                        weight: .bold
                    ),
                    .foregroundColor: UIColor.white
                ]
            ), 
            for: .normal
        )
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var registerButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .label
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.setAttributedTitle(
            NSAttributedString(
                string: "회원가입",
                attributes: [
                    .font: UIFont.systemFont(
                        ofSize: 17.0,
                        weight: .bold
                    ),
                    .foregroundColor: UIColor.systemBackground
                ]
            ),
            for: .normal
        )
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(registerButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var loginAndRegisterButton: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [loginButton, registerButton])
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    private func setupUI() {
        view.backgroundColor = .systemBackground
        view.addSubview(textFields)
        view.addSubview(loginAndRegisterButton)
        
        NSLayoutConstraint.activate([
            idTextField.heightAnchor.constraint(equalToConstant: 50),
            textFields.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textFields.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            textFields.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            loginAndRegisterButton.centerXAnchor.constraint(equalTo: textFields.centerXAnchor),
            loginAndRegisterButton.topAnchor.constraint(
                greaterThanOrEqualTo: textFields.bottomAnchor,
                constant: 40
            ),
            loginAndRegisterButton.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                constant: -5
            ),
            loginAndRegisterButton.leadingAnchor.constraint(equalTo: textFields.leadingAnchor)
        ])
    }
    
    private func showAlert(message: String) {
        let alertController = UIAlertController(
            title: nil,
            message: message,
            preferredStyle: .alert
        )
        let action = UIAlertAction(title: "확인", style: .default)
        alertController.addAction(action)
        present(alertController, animated: true)
    }
    
    @objc private func loginButtonTapped() {
        guard let userInfo = UserDefaults.standard.object(
            forKey: idTextField.text!
        ) as? [String: String] else {
            showAlert(message: "존재하지 않는 아이디입니다.")
            return
        }
        
        guard pwTextField.text! == userInfo["PW"] else {
            showAlert(message: "비밀번호가 일치하지 않습니다.")
            return
        }
        
        UserDefaults.standard.setValue(true, forKey: "isLoggedIn")
        
        let homeVC = HomeViewController()
        let hostingController = UIHostingController(rootView: homeVC)
        
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?
            .rootViewController(hostingController)
    }
    
    @objc private func registerButtonTapped() {
        guard UserDefaults.standard.object(forKey: idTextField.text!) == nil else {
            showAlert(message: "이미 존재하는 아이디입니다.")
            return
        }
        
        let info = ["ID": idTextField.text!, "PW": pwTextField.text!]
        
        UserDefaults.standard.setValue(info, forKey: idTextField.text!)
        showAlert(message: "회원가입 완료")
    }

}
