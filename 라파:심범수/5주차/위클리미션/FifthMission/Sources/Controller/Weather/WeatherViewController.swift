//
//  WeatherViewController.swift
//  FifthMission
//
//  Created by Rafael on 10/31/23.
//

import UIKit

class WeatherViewController: UIViewController {
    
    private lazy var inputCityNameTextFeild: UITextField = {
        let textField = UITextField()
        textField.placeholder = "도시 검색"
        textField.textColor = .label
        textField.tintColor = .systemGray
        textField.clipsToBounds = true
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemGray.cgColor
        textField.layer.cornerRadius = 5
        textField.autocorrectionType = .no
        textField.autocapitalizationType = .none
        textField.returnKeyType = .search
        textField.becomeFirstResponder()
        textField.delegate = self
        
        let searchView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 20))
        let searchImage = UIImage(systemName: "magnifyingglass")
        let searchImageView = UIImageView(image: searchImage)
        searchImageView.frame = CGRect(x: 5, y: 0, width: 20, height: 20)
        searchView.addSubview(searchImageView)
        
        textField.leftView = searchView
        textField.leftViewMode = .always
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    private lazy var cityNameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.attributedText = NSAttributedString(string: "부산광역시", attributes: [.font: UIFont.systemFont(ofSize: 35, weight: .medium), .foregroundColor: UIColor.label])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var tempLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.attributedText = NSAttributedString(string: "21℃", attributes: [.font: UIFont.systemFont(ofSize: 100, weight: .medium), .foregroundColor: UIColor.label])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.attributedText = NSAttributedString(string: "청명함", attributes: [.font: UIFont.systemFont(ofSize: 20, weight: .semibold), .foregroundColor: UIColor.label])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var maxTempLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.attributedText = NSAttributedString(string: "최고: 22º", attributes: [.font: UIFont.systemFont(ofSize: 20, weight: .semibold), .foregroundColor: UIColor.label])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var minTempLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.attributedText = NSAttributedString(string: "최저: 13º", attributes: [.font: UIFont.systemFont(ofSize: 20, weight: .semibold), .foregroundColor: UIColor.label])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var weatherData: UIStackView = {
        let stackView = UIStackView(
            arrangedSubviews: [
                cityNameLabel,
                tempLabel,
                descriptionLabel
            ]
        )
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.isHidden = true
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var subTemperatures: UIStackView = {
        let stackView = UIStackView(
            arrangedSubviews: [
                maxTempLabel,
                minTempLabel
            ]
        )
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.alignment = .fill
        stackView.spacing = 10
        stackView.isHidden = true
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var bringWeatherDataButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .label
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.setTitle("날씨 가져오기", for: .normal)
        button.addTarget(self, action: #selector(bringWeatherDataButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(inputCityNameTextFeild)
        view.addSubview(weatherData)
        view.addSubview(subTemperatures)
        view.addSubview(bringWeatherDataButton)
        
        NSLayoutConstraint.activate([
            inputCityNameTextFeild.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            inputCityNameTextFeild.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            inputCityNameTextFeild.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            inputCityNameTextFeild.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            weatherData.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            weatherData.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            weatherData.leadingAnchor.constraint(equalTo: inputCityNameTextFeild.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            subTemperatures.centerXAnchor.constraint(equalTo: weatherData.centerXAnchor),
            subTemperatures.topAnchor.constraint(equalTo: weatherData.bottomAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            bringWeatherDataButton.centerXAnchor.constraint(equalTo: subTemperatures.centerXAnchor),
            bringWeatherDataButton.leadingAnchor.constraint(equalTo: weatherData.leadingAnchor),
            bringWeatherDataButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            bringWeatherDataButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func getCurrentWeather(cityName: String) {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=3f90ce0363ca95e99e038d218796cbd5") else {
            return
        }
        let session = URLSession(configuration: .default)
        session.dataTask(with: url) { [weak self] data, response, error in
            let successRange = (200..<300)
            guard let data = data, error == nil else {
                return
            }
            let decoder = JSONDecoder()
            if let response = response as? HTTPURLResponse, successRange.contains(response.statusCode) {
                guard let weatherInformation = try? decoder.decode(WeatherInformation.self, from: data) else {
                    return
                }
                DispatchQueue.main.async {
                    self?.weatherData.isHidden = false
                    self?.subTemperatures.isHidden = false
                    self?.configureView(weatherInformation: weatherInformation)
                }
            } else {
                guard let errorMessgae = try? decoder.decode(ErrorMessage.self, from: data) else {
                    return
                }
                DispatchQueue.main.async {
                    self?.showAlert(message: errorMessgae.message)
                }
                debugPrint(errorMessgae)
            }
        }.resume()
    }
    
    private func configureView(weatherInformation: WeatherInformation) {
        cityNameLabel.text = weatherInformation.name
        if let weather = weatherInformation.weather.first {
            descriptionLabel.text = weather.description
        }
        tempLabel.text = "\(Int(weatherInformation.temp.temp - 273.15))℃"
        minTempLabel.text = "최저: \(Int(weatherInformation.temp.minTemp - 273.15))℃"
        maxTempLabel.text = "최고: \(Int(weatherInformation.temp.maxTemp - 273.15))℃"
    }
    
    private func showAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "확인", style: .default))
        present(alert, animated: true)
        
    }
    
    @objc private func bringWeatherDataButtonTapped() {
        if let cityName = inputCityNameTextFeild.text {
            getCurrentWeather(cityName: cityName)
            view.endEditing(true)
        }
    }
    
}

extension WeatherViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.becomeFirstResponder()
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemBlue.cgColor
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.systemGray.cgColor
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let cityName = textField.text {
            getCurrentWeather(cityName: cityName)
            view.endEditing(true) // 키보드를 숨깁니다.
        }
        return true
    }
}
