//
//  LoginViewController.swift
//  FifthMission
//
//  Created by Rafael on 10/31/23.
//

import UIKit

import KakaoSDKAuth
import KakaoSDKCommon
import KakaoSDKUser

class LoginViewController: UIViewController {
    
    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.attributedText = NSAttributedString(
            string: "Welcome!",
            attributes: [
                .font: UIFont.systemFont(
                    ofSize: 40.0,
                    weight: .bold
                ),
                .foregroundColor: UIColor.label
            ]
        )
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var idTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "아이디를 입력해주세요."
        textField.clipsToBounds = true
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemGray.cgColor
        textField.layer.cornerRadius = 5
        textField.autocorrectionType = .no
        textField.autocapitalizationType = .none
        textField.becomeFirstResponder()
        textField.delegate = self
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        let leftPaddingView = UIView(
            frame: CGRect(
                x: 0,
                y: 0,
                width: 10,
                height: textField.frame.size.height
            )
        )
        textField.leftView = leftPaddingView
        textField.leftViewMode = .always
        
        return textField
    }()
    
    private lazy var pwTextField: CustomPwTextField = {
        let textField = CustomPwTextField()
        textField.placeholder = "비밀번호를 입력해주세요."
        textField.clipsToBounds = true
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemGray.cgColor
        textField.layer.cornerRadius = 5
        textField.autocorrectionType = .no
        textField.autocapitalizationType = .none
        textField.isSecureTextEntry = true
        textField.delegate = self
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        let leftPaddingView = UIView(
            frame: CGRect(
                x: 0,
                y: 0,
                width: 10,
                height: textField.frame.size.height
            )
        )
        textField.leftView = leftPaddingView
        textField.leftViewMode = .always
        
        textField.rightView = showPasswordButton
        textField.rightViewMode = .always
        
        return textField
    }()
    
    private lazy var underLineView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBackground
        return view
    }()
    
    private lazy var showPasswordButton: UIButton = {
        var configuration = UIButton.Configuration.plain()
        configuration.imagePadding = 10
        
        let button = UIButton(configuration: configuration)
        button.setImage(UIImage(systemName: "eye")?
            .withTintColor(
                .systemGray2,
                renderingMode: .alwaysOriginal
            )
            .withConfiguration(
                UIImage.SymbolConfiguration(
                    pointSize: 15.0,
                    weight: .medium
                )
            ),
            for: .normal
        )
        button.addTarget(self, action: #selector(showPasswordButtonTapped), for: .touchUpInside)
        return button
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
    
    private lazy var kakaoLoginButton: UIButton = {
        let button = UIButton(type: .custom)
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.setImage(UIImage(named: "kakao"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(kakaoLoginButtonTapped), for: .touchUpInside)
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
    
    private lazy var buttons: UIStackView = {
        let stackView = UIStackView(
            arrangedSubviews: [
                loginButton,
                kakaoLoginButton,
                registerButton
            ]
        )
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
        view.addSubview(welcomeLabel)
        view.addSubview(textFields)
        view.addSubview(buttons)
        
        NSLayoutConstraint.activate([
            welcomeLabel.centerXAnchor.constraint(equalTo: textFields.centerXAnchor),
            welcomeLabel.bottomAnchor.constraint(equalTo: textFields.topAnchor, constant: -100),
            welcomeLabel.leadingAnchor.constraint(equalTo: textFields.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            idTextField.heightAnchor.constraint(equalToConstant: 50),
            textFields.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textFields.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            textFields.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            loginButton.heightAnchor.constraint(equalToConstant: 55),
            buttons.centerXAnchor.constraint(equalTo: textFields.centerXAnchor),
            buttons.topAnchor.constraint(
                greaterThanOrEqualTo: textFields.bottomAnchor,
                constant: 40
            ),
            buttons.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                constant: -5
            ),
            buttons.leadingAnchor.constraint(equalTo: textFields.leadingAnchor)
        ])
    }
    
    private func isIdValid(_ id: String) -> Bool {
        let idRegex = "^[a-zA-Z0-9]{4,}$"
        return NSPredicate(format: "SELF MATCHES %@", idRegex).evaluate(with: id)
    }
    
    private func isPasswordValid(_ password: String) -> Bool {
        let passwordRegex = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: password)
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
    
    private func setUserInfo() {
        UserApi.shared.me { (user, error) in
            if let error = error {
                print(error)
            } else {
                print("me() success.")
                
                if let nickname = user?.kakaoAccount?.profile?.nickname {
                    UserDefaults.standard.set(nickname, forKey: "nickname")
                    let articleVC = ArticleViewController()
                    let navigationController = UINavigationController(rootViewController: articleVC)
                    
                    (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?
                        .rootViewController(navigationController)
                }
            }
        }
    }
    
    @objc private func showPasswordButtonTapped(_ sender: UIButton) {
        pwTextField.isSecureTextEntry.toggle()
        
        let imageName = pwTextField.isSecureTextEntry ? "eye" : "eye.slash"
        let symbolConfiguration = UIImage.SymbolConfiguration(pointSize: 15.0, weight: .medium)
        
        let image = UIImage(systemName: imageName)?
            .withTintColor(.systemGray2, renderingMode: .alwaysOriginal)
            .withConfiguration(symbolConfiguration)
        
        showPasswordButton.setImage(image, for: .normal)
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
        
        if let nickname = idTextField.text {
            UserDefaults.standard.set(nickname, forKey: "idNickname")
            let articleVC = ArticleViewController()
            let navigationController = UINavigationController(rootViewController: articleVC)
            
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?
                .rootViewController(navigationController)
        }
    }
    
    @objc private func kakaoLoginButtonTapped() {
        UserApi.shared.loginWithKakaoAccount(prompts: [.SelectAccount]) { (oauthToken, error) in
            if let error = error {
                print(error)
            } else {
                print("loginWithKakaoAccount() success.")
                _ = oauthToken
                UserDefaults.standard.setValue(true, forKey: "isKakaoLoggedIn")
                
                self.setUserInfo()
            }
        }
    }
    
    @objc private func registerButtonTapped() {
        guard let id = idTextField.text, let password = pwTextField.text else {
            showAlert(message: "아이디와 비밀번호를 모두 입력해주세요.")
            return
        }
        
        if !isIdValid(id) {
            showAlert(message: "올바른 아이디 형식이 아닙니다.")
            return
        }
        
        if !isPasswordValid(password) {
            showAlert(message: "올바른 비밀번호 형식이 아닙니다.")
            return
        }
        
        guard UserDefaults.standard.object(forKey: idTextField.text!) == nil else {
            showAlert(message: "이미 존재하는 아이디입니다.")
            return
        }
        
        let info = ["ID": idTextField.text!, "PW": pwTextField.text!]
        
        UserDefaults.standard.setValue(info, forKey: idTextField.text!)
        showAlert(message: "회원가입 완료")
    }
    
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.becomeFirstResponder()
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemBlue.cgColor
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.systemGray.cgColor
    }
}
