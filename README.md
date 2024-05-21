

# iNeptune

### [ 대학교 연합 동아리 UMC - Neptune 지부 ]

![IMG_3695](https://github.com/iNeptune-Code-Adventurers/iNeptune/assets/118424182/59c669e6-d4bb-4d3b-9135-52976a02c5e4)

<br>

---

<br>

# 목차
### Conventions
- [Folder Structure](#Folder-Structure)
- [Commit Convention](#Commit-Convention)
- [Swift Style Guide](#Swift-Style-Guide)

### Missions
- [1주차](#1주차)
- [2주차](#2주차)
- [3주차](#3주차)
- [4주차](#4주차)
- [5주차](#5주차)
- [6주차](#6주차)
- [7주차](#7주차)
- [8주차](#8주차)
- [9주차](#9주차)
- [10주차](#10주차)

<br>

---

<br>

# Folder Structure
```bash
📁 닉네임:이름
   ├── 📁 1주차
   │    ├── 📁 스터디미션
   │    │    └── 📄 프로젝트
   │    └── 📁 위클리미션
   │         └── 📄 프로젝트
   │
   ├── 📁 2주차
   │    ├── 📁 스터디미션
   │    │    └── 📄 프로젝트
   │    └── 📁 위클리미션
   │         └── 📄 프로젝트
   ...
```

<br>

# Commit Convention
* (n)주차 (Mission Type) 미션
```bash
1주차 스터디 미션
```
```bash
1주차 위클리 미션
```

<br>

# Swift Style Guide
[iNeptune Style Guide](https://github.com/rafa-e1/iNeptune/blob/main/SwiftStyleGuide.md)

레오가 제안한 아이디어로 스터디 기간 동안 코드 컨벤션을 도입하려고 합니다.
스터디 기간 동안 쓰이지 않을 것으로 판단되는 부분은 제외하고 아래 두 가지 출처에서 참고한 내용을 통합하여 사용할 것입니다.

 - [StyleShare](https://github.com/StyleShare/swift-style-guidehttps://github.com/StyleShare/swift-style-guide)
 - [토미의 개발노트](https://jusung.github.io/Swift-Code-Convention/)

<br>

---

<br>

# 1주차
[ **라파** ] 미션 결과물

![Simulator Screen Recording - iPhone 15 Pro - 2023-09-28 at 00 22 26](https://github.com/iNeptune-Code-Adventurers/iNeptune/assets/118424182/2027328f-0549-4d86-90a7-4cd4dc6ba892)
![Simulator Screen Recording - iPhone 15 Pro - 2023-09-28 at 00 29 16](https://github.com/iNeptune-Code-Adventurers/iNeptune/assets/118424182/0c42a0e4-7fb8-45e7-968f-d2077699a730)

## 회고록
### 배운 점
라파 🐵
* UICollectionView와 UICollectionViewCompositionalLayout을 사용하여 복잡한 레이아웃을 간편하게 구현하는 방법을 배웠다.

* UIRefreshControl을 사용하여 새로고침 기능 구현하는 것을 배웠다.

* 그림자 효과를 주는 방법을 배웠다.

* SafeAreaBrush라는 오픈소스라이브러리를 통해 SafeArea 영역을 보다 쉽게 색상을 채우는 것을 배웠다.

레오 🐶
* UIButton의 configuration을 사용해 버튼의 레이아웃을 잡는 방법을 익혔다.

후니 🐱
* 기본적인 Xcode 단축키부터 스토리보드 기본적인 사용법, 옵셔널 기본 내용을 배웠다.

---

### 잘한 점
라파 🐵
* 코드 베이스로 개발을 하니 코드 구조에 대해 예전보다 더욱 신경쓰게 되었다.

* 각 섹션에 대한 레이아웃을 별도의 메서드로 분리하여 가독성을 높이려고 노력하였다.

* 이번 프로젝트의 네비게이션 바와 검색 버튼과 같은 디자인은 처음 구현해봤는데 예상보다 잘 구현되었다.

레오 🐶
* 첫 프로젝트 이후 다시 개발을 했는데 레이아웃 잡는게 생각보다 잘 돼서 성장한 걸 느꼈다. 

후니 🐱
* 내가 잘한 점보다는 라파와 레오가 적극적으로 도와줘서 너무 고마웠다.

---

### 아쉬운 점
라파 🐵
* 코드 베이스로 레이아웃을 구성하는 것이 어려워 완벽하게 구현하지 못한 것이 아쉬웠다.

* 탭 바의 가운데 버튼이 기기 크기가 달라지면서 위치를 벗어나는 것이 아쉬웠다.

레오 🐶
* 배달의 민족 메인화면이 엄청 어려웠다. 탭바도 커스텀해야되고, UIView의 border에 gradient주기, 디바이스 별 fontsize 대응 등 해결하지 못한 문제가 많아서 시간이 날 때 계속 고쳐봐야겠다.

후니 🐱
* 내가 공부해야할 양이 너무 많이 남아있다는 것

---

### 앞으로의 계획
라파 🐵
* 코드 리팩토링을 통해 중복되는 코드를 최대한 줄일 것이고 디바이스 크기에 대한 레이아웃 처리를 조금 더 신경써서 코드를 짜야겠다.

레오 🐶
* 트러블 슈팅도 해당 주차 내로 완성하는걸 목표로 해야겠다. 데드라인 안에 구현을 다 할 수 있도록 계획을 꼼꼼히 세워야겠다.

후니 🐱
* 꾸준히 그리고 열심히 공부해야겠다. 그래서 라파와 레오가 추천해주는 것들과 swift 문법과 스코클을 열심히 들어야겠다.

<br>

[목차로 이동 🔺](#목차)

<br>

# 2주차
[ **라파** ] 미션 결과물 미션 결과물

*위클리 미션 누락*
![Simulator Screen Recording - iPhone 15 Pro - 2023-10-13 at 10 25 41](https://github.com/iNeptune-Code-Adventurers/iNeptune/assets/118424182/901cd89e-dd48-4b5f-b6c7-31292558a785)

## 회고록
### 배운 점
라파 🐵
* 

레오 🐶
* 

후니 🐱
* 

---

### 잘한 점
라파 🐵
* 

레오 🐶
* 

후니 🐱
* 

---

### 아쉬운 점
라파 🐵
* 

레오 🐶
* 

후니 🐱
* 

---

### 앞으로의 계획
라파 🐵
* 

레오 🐶
* 

후니 🐱
* 

<br>

[목차로 이동 🔺](#목차)

<br>

# 3주차
[ **라파** ] 미션 결과물

![Simulator Screen Recording - iPhone 15 Pro - 2023-10-13 at 23 24 02](https://github.com/iNeptune-Code-Adventurers/iNeptune/assets/118424182/9784b39e-631d-4c72-bc8f-2f8d28270c21)
![Simulator Screen Recording - iPhone 15 Pro - 2023-10-22 at 22 00 13](https://github.com/iNeptune-Code-Adventurers/iNeptune/assets/118424182/c5b4dfe2-bc70-494c-b90d-2d765e367a2d)

## 회고록
### 배운 점
라파 🐵
* scrollViewDidScroll 메서드를 사용하여 스트레치 헤더 뷰의 높이와 위치를 동적으로 조절하는 것을 배웠다.

* UILabel을 상속받는 PaddingLabel이라는 커스텀 클래스를 정의하여 레이블을 커스텀하는 방법을 배웠다.

레오 🐶
* 

후니 🐱
* 

---

### 잘한 점
라파 🐵
* IndexPath에 row와 section이라는 연관값을 추가하여 각 셀에 해당하는 데이터가 전달되도록 작성하였다.

```swift
case IndexPath(row: 0, section: 0):
```

레오 🐶
* 

후니 🐱
* 

---

### 아쉬운 점
라파 🐵
* 3주차에서 가장 중요한 핵심인 데이터를 다른 뷰 컨트롤러에 전달하는 것을 구현하지 못해 아쉽다.

레오 🐶
* 

후니 🐱
* 

---

### 앞으로의 계획
라파 🐵
* 모든 스터디가 마무리되면 1주차부터 10주차까지 진행했던 프로젝트들 중 완성하지 못한 프로젝트에 대해 완성할 것이다.

레오 🐶
* 

후니 🐱
* 

<br>

[목차로 이동 🔺](#목차)

<br>

# 4주차
[ **라파** ] 미션 결과물

![Simulator Screen Recording - iPhone 15 Pro - 2023-10-22 at 21 34 20](https://github.com/iNeptune-Code-Adventurers/iNeptune/assets/118424182/6765710b-1343-4084-887c-a82bc4a9ebdb)
![Simulator Screen Recording - iPhone 15 Pro - 2023-10-22 at 21 55 59](https://github.com/iNeptune-Code-Adventurers/iNeptune/assets/118424182/d8c573bb-1e11-4da3-a1b8-2b1c0f1d858f)

## 회고록
### 배운 점
라파 🐵
* UserDefaults를 사용해서 간단한 데이터를 키와 값 형태로 저장할 수 있다는 것을 배웠다. 예를 들어, 사용자의 ID와 비밀번호를 아래와 같이 저장할 수 있다.

```swift
let info = ["ID": idTextField.text!, "PW": pwTextField.text!]
```
* 이번 미션에는 SwiftUI도 사용하였는데 UIHostingController라는 클래스를 통해 UIKit에서도 SwiftUI를 불러올 수 있다는 것을 배웠다.

```swift
let homeVC = HomeViewController()
let hostingController = UIHostingController(rootView: homeVC)
```

레오 🐶
* 

후니 🐱
* 

---

### 잘한 점
라파 🐵
* 저장된 키의 호출 여부에 따라 앱을 실행했을 때 어떤 뷰를 호출할지 결정할 수 있다는 것이 흥미로웠다. 아래 코드는 사용자가 로그인한 상태인지 여부를 확인하고 그에 따라 앱의 루트 뷰 컨트롤러를 설정하는 코드이다.

```swift
if UserDefaults.standard.string(forKey: "isLoggedIn") != nil {
    window?.rootViewController = hostingController
} else {
    window?.rootViewController = LoginViewController()
}
```

레오 🐶
* 

후니 🐱
* 

---

### 아쉬운 점
라파 🐵
* 4주차 미션은 기능 구현에 중점을 두어서 사용자 친화적인 UI/UX를 제공하지 않았다. 예를 들어, 잘못된 아이디나 비밀번호를 입력했을 때 경고창을 띄우는 대신, 텍스트 필드 흔들림 효과와 빨간색 텍스트로 오류 안내를 제공했다면 사용자 입장에서 더 간편하고 매력적인 시각적 효과를 제공하였을 것이다.

* 아이디와 비밀번호에 대한 정규 표현식을 사용하여 입력값을 유효성 검사하는 기능을 추가했다면 사용자의 입력을 더 엄격하게 검사할 수 있었을 것이다.

레오 🐶
* 

후니 🐱
* 

---

### 앞으로의 계획
라파 🐵
* 4주차에서의 미흡한 경험을 바탕으로 향후 프로젝트를 진행할 때 사용자들에게 좋은 시각적 효과와 경험을 제공할 수 있도록 UI와 UX에 대해 더 깊게 공부할 것이다.

레오 🐶
* 

후니 🐱
* 

<br>

[목차로 이동 🔺](#목차)

<br>

# 5주차
[ **라파** ] 미션 결과물

#### (왼쪽) 일반 로그인 / (오른쪽) 카카오 로그인

![1](https://github.com/iNeptune-Code-Adventurers/iNeptune/assets/118424182/2ab4b08c-f3cd-4720-8de0-34b15c1b2f02)
![2](https://github.com/iNeptune-Code-Adventurers/iNeptune/assets/118424182/c197542f-0fa2-424f-9755-216a9641fd6d)

## 회고록
### 배운 점
라파 🐵

**_< Login & Register >_**
* 아래 코드는 UserDefaults(간단한 데이터 저장에 유용)를 사용하여 사용자의 로그인 상태를 저장하고 확인한다. 그리고 사용자가 카카오로 로그인하였는지, 일반 회원가입을 통해 로그인 하였는지를 ```if-else``` 조건문을 통해 세 가지 경우에 대한 처리를 구현하는 법을 배웠다.

```SceneDelegate.swift```
```swift
if UserDefaults.standard.string(forKey: "isKakaoLoggedIn") != nil {
    window?.rootViewController = UINavigationController(rootViewController: tabBarController)
} else if UserDefaults.standard.string(forKey: "isLoggedIn") != nil {
    window?.rootViewController = UINavigationController(rootViewController: tabBarController)
} else {
    window?.rootViewController = LoginViewController()
}
```

* Kakao SDK를 활용하여 카카오 계정으로 로그인하는 기능이 구현되었다. 또한, 카카오 로그인 시에는 사용자 정보를 가져와서 처리하고 있다.

```LoginViewController.swift```
```swift
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

.
.
.

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
```

* 일반 회원가입을 통해 로그인을 하면 네비게이션 바 타이틀에 회원가입에 사용된 아이디 데이터가 전달되고 카카오로 로그인을 하면 카카오에서 사용하는 이름이 전달되도록 설정하였다.

```ArticleViewController.swift```
```swift
if let nickname = UserDefaults.standard.string(forKey: "nickname") {
        navigationItem.title = "\(nickname)님 환영합니다!"
    } else if let idNickname = UserDefaults.standard.string(forKey: "idNickname") {
        navigationItem.title = "\(idNickname)님 환영합니다!"
}
```

* 비밀번호 입력 필드에서 눈 모양의 아이콘을 통해 비밀번호를 보이기/가리기 할 수 있는 기능을 구현하였다. 하지만 비밀번호를 어느정도 입력한 상태에서 보이게 했다가 다시 가리고 비밀번호를 이어서 입력하려고 할 때 비밀번호가 모두 지워지고 처음부터 다시 입력되는 버그(?)가 있어서 커스텀 TextField를 만들고 TextField를 재정의하는 방법을 사용하였다.

```CustomPwTextField.swift```
```swift
class CustomPwTextField: UITextField {
    
    override var isSecureTextEntry: Bool {
        didSet {
            if isFirstResponder {
                _ = becomeFirstResponder()
            }
        }
    }
    
    override func becomeFirstResponder() -> Bool {
        let success = super.becomeFirstResponder()
        if isSecureTextEntry, let text = self.text {
            self.text?.removeAll()
            insertText(text)
        }
        return success
    }
    
}
```

**_< NEWS API >_**
* **[ 프로토콜 활용 ]**: ```ArticleModelProtocol```이라는 프로토콜을 생성하여 델리게이션 패턴을 적용하였다. 이를 통해 모델의 작업이 완료되면 뷰 컨트롤러에게 결과를 전달할 수 있었다.

* **[ 네트워크 요청 및 비동기 처리 ]**: 네트워크 요청은 ```URLSession```을 사용하여 비동기로 처리되고 있다. 이는 앱이 다운로드 작업이 완료될 때까지 다른 작업을 수행할 수 있도록 한다. 또한, ```DispatchQueue.main.async```를 사용하여 메인 스레드에서 UI 업데이트를 수행하고 있다.

* **[ 에러 처리 ]**: 네트워크 요청 도중 발생하는 에러에 대한 처리를 구현하였다. 만약 에러가 없으면 데이터를 디코딩하고 에러가 발생하면 해당 에러에 대한 적절한 메시지를 출력할 수 있다.

* **[ URL 문자열 상수 사용 ]**: API 엔드포인트에 대한 URL 문자열이 상수로 정의되어 있다. 이는 오타나 변경에 따른 영향을 최소화하고 코드를 더 읽기 쉽게 만든다.

* **[ JSON 디코딩 ]**: JSON 디코딩을 수행할 때 JSONDecoder를 사용한다. 이는 Codable 프로토콜을 이용하여 간단하게 모델 객체로 디코딩할 수 있다.

```ArticleModel.swift```
```swift
import Foundation

protocol ArticleModelProtocol {
    func articlesRetrieved(articles: [Article])
}

class ArticleModel {
    
    var delegate: ArticleModelProtocol?
    
    func getArticles() {
        let urlString = "https://newsapi.org/v2/everything?q=tesla&from=2023-10-03&sortBy=publishedAt&apiKey=1b5ea3c15eae4e45ab353b9e4ee892fb"
        let url = URL(string: urlString)
        guard url != nil else {
            print("Couldn't create url object")
            return
        }
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url!) { data, response, error in
            if error == nil && data != nil {
                let decoder = JSONDecoder()
                do{
                    let articleService = try decoder.decode(ArticleService.self, from: data!)
                    
                    DispatchQueue.main.async {
                        if let articles = articleService.articles {
                            self.delegate?.articlesRetrieved(articles: articles)
                        } else {
                            print("Article array is nil")
                        }
                    }
                }
                catch {
                    print("Error parsing the json")
                }
            }
        }
        dataTask.resume()
    }
    
}
```

레오 🐶
* 

후니 🐱
* 

---

### 잘한 점
라파 🐵
* 일반 회원가입을 통해 로그인이나 카카오로 로그인 했을 때 네비게이션 바에 각각의 경우에 따라 서로 다른 데이터 값을 전달받을 수 있도록 하였다.

* 그리고 이번에는 UI/UX에도 신경 써서 개발하였는데 먼저, 비밀번호 필드에 눈 모양의 아이콘을 통해 비밀번호 보이기/가리기 기능을 구현하였고 아이디와 비밀번호에 대한 정규 표현식을 적용하여 사용자에게 안전한 아이디와 비밀번호를 설정할 수 있게 유도하였다.

```LoginViewController.swift```
```swift
private func isIdValid(_ id: String) -> Bool {
    let idRegex = "^[a-zA-Z0-9]{4,}$"
        return NSPredicate(format: "SELF MATCHES %@", idRegex).evaluate(with: id)
    }
    
private func isPasswordValid(_ password: String) -> Bool {
    let passwordRegex = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: password)
    }

.
.
.

@objc private func showPasswordButtonTapped(_ sender: UIButton) {
    pwTextField.isSecureTextEntry.toggle()
        
    let imageName = pwTextField.isSecureTextEntry ? "eye" : "eye.slash"
    let symbolConfiguration = UIImage.SymbolConfiguration(pointSize: 15.0, weight: .medium)
        
    let image = UIImage(systemName: imageName)?
        .withTintColor(.systemGray2, renderingMode: .alwaysOriginal)
        .withConfiguration(symbolConfiguration)
        
    showPasswordButton.setImage(image, for: .normal)
}
```

* ```becomeFirstResponder()``` 메서드를 통해 텍스트 필드가 자동으로 활성화되어 키보드가 올라오도록 하였고 활성화된 텍스트 필드 테두리 색이 변경됨으로써 사용자에게 좋은 시각적 효과를 제공하였다.

```swift
func textFieldDidBeginEditing(_ textField: UITextField) {
    textField.becomeFirstResponder()
    textField.layer.borderWidth = 1
    textField.layer.borderColor = UIColor.systemBlue.cgColor
}
    
func textFieldDidEndEditing(_ textField: UITextField) {
    textField.layer.borderColor = UIColor.systemGray.cgColor
}
```


레오 🐶
* 

후니 🐱
* 

---

### 아쉬운 점
라파 🐵
* 이번 미션에서는 아쉬운 점 없이 잘한 것 같다.

레오 🐶
* 

후니 🐱
* 

---

### 앞으로의 계획
라파 🐵
* 아직 API 연동 코드에 익숙하지 않아서 손에 적응할 때까지 API 연동하는 것을 많이 연습할 것이다.

레오 🐶
* 

후니 🐱
* 

<br>

[목차로 이동 🔺](#목차)

<br>

# 6주차
[ **라파** ] 미션 결과물

![Simulator Screen Recording - iPhone 15 Pro - 2023-11-11 at 22 54 27](https://github.com/iNeptune-Code-Adventurers/iNeptune/assets/118424182/6065b1d4-1a43-42a5-a44a-b0a109a178e3)

## 회고록
### 배운 점
라파 🐵
* SwiftUI에서 ```UINavigationBarAppearance``` 객체를 생성하여 내비게이션 바의 외형을 커스텀할 수 있었다.

```HomeView.swift```
```swift
init() {
    let navBarAppearance = UINavigationBarAppearance()
    navBarAppearance.backgroundColor = UIColor(named: "mainColor")
    UINavigationBar.appearance().standardAppearance = navBarAppearance
    UINavigationBar.appearance().compactAppearance = navBarAppearance
    UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
}
```

* ```@State``` 속성을 사용하여 ```currentIndex```와 ```timer```를 추적하여 뷰의 상태를 저장하고 변경을 감지하여 뷰를 업데이트하는 데 사용된다.

```BannerView```
```swift
@State private var currentIndex = 0
@State private var timer: Timer?
```

* ```TabView```는 페이지 형태의 뷰를 제공하며, 여기에서는 ```colors``` 배열의 각 요소에 대해 ```ForEach``` 루프를 사용하여 페이징 배너 뷰를 만들었다.
```swift
TabView(selection: $currentIndex) {
    ForEach(0..<colors.count, id: \.self) { index in
        Rectangle()
            .fill(Color(colors[index]))
            .tag(index)
    }
}
.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic)) // PageTabViewStyle을 사용하여 페이지 간 전환 효과를 추가
```

* ```Timer```를 활용하여 일정한 시간 간격으로 배너를 전환한다. ```startTimer``` 함수에서는 ```withAnimation``` 블록 내에서 ```currentIndex```를 업데이트하여 전환 시 애니메이션을 추가한다.

```swift
TabView(selection: $currentIndex) { ... }
.onAppear {
    startTimer()
}
.onDisappear {
    stopTimer()
}

private func startTimer() {
    timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { _ in
        withAnimation {
            currentIndex = (currentIndex + 1) % colors.count
        }
    }
}

private func stopTimer() {
    timer?.invalidate()
    timer = nil
}
```

레오 🐶
* 

후니 🐱
* 

---

### 잘한 점
라파 🐵
* ```onAppear```와 ```onDisappear```를 사용하여 배너 뷰가 나타날 때와 사라질 때 각각 타이머를 시작하고 중지하는 로직을 넣어서 효율적으로 타이머를 관리하였다.
* 타이머와 관련된 로직을 ```startTimer```와 ```stopTimer``` 함수로 모듈화하여 코드를 더 읽기 쉽게 만들었다.

레오 🐶
* 

후니 🐱
* 

---

### 아쉬운 점
라파 🐵
* 타이머 생성에 실패할 경우에 대한 에러 처리가 빠졌다.
* "background"와 같은 색상 리터럴을 사용했는데 이를 프로젝트에서 사용하는 실제 색상 명칭으로 대체하면 더 가독성이 높아질 것이다.

```swift
.foregroundColor(Color("background")) -> .foregroundColor(Color.myBackground)
```

* 중복되는 코드가 많이 보인다. 

레오 🐶
* 

후니 🐱
* 

---

### 앞으로의 계획
라파 🐵
* 중복되는 코드를 최대한 줄이고 모듈화하여 조금 더 가독성있는 코드를 작성할 것이다.

레오 🐶
* 

후니 🐱
* 

<br>

[목차로 이동 🔺](#목차)

<br>

# 7주차
[ **라파** ] 미션 결과물

![Simulator Screen Recording - iPhone 15 Pro - 2023-11-17 at 11 13 17](https://github.com/iNeptune-Code-Adventurers/iNeptune/assets/118424182/4f7c15cf-4df3-483b-9819-2f81b85e619f)

## 회고록
### 배운 점
라파 🐵
* ```ZStack```의 ```alignment``` 속성들 중에 ```.bottomTrailing```도 있다는 것을 알게 되었고 이는 뷰를 구성하는데 엄청 편리했다.

```ProductRow.swift```
```swift
ZStack(alignment: .bottomTrailing) { ... }
```

레오 🐶
* 

후니 🐱
* 

---

### 잘한 점
라파 🐵
* 코드를 모듈화하여 가독성을 높이기 위해 ```SubProductRow```라는 커스텀 뷰를 만들었다. 또한 ```ForEach``` 루프를 활용하여 중복 코드를 제거하고 ```Subproduct```의 아이템 개수만큼 뷰를 생성하는 간결한 방식으로 코드를 작성했다.

```SubProductView.swift```
```swift
ScrollView(.horizontal) {
    HStack {
        ForEach(Subproduct.items) {
            SubProductRow(imageName: $0.imageName, title: $0.title, price: $0.price)
                .padding(.vertical, 5)
        }
    }
}
```

레오 🐶
* 

후니 🐱
* 

---

### 아쉬운 점
라파 🐵
* 이번 프로젝트는 전 프로젝트와 큰 차이가 없고 쉬워서 아쉬운 점은 없었다.

레오 🐶
* 

후니 🐱
* 

---

### 앞으로의 계획
라파 🐵
* 최대한 가독성 있고 효율적인 코드를 연구해볼 것이다.

레오 🐶
* 

후니 🐱
* 

<br>

[목차로 이동 🔺](#목차)

<br>

# 8주차
[ **라파** ] 미션 결과물

![Simulator Screen Recording - iPhone 15 Pro - 2023-12-24 at 09 25 04](https://github.com/iNeptune-Code-Adventurers/iNeptune/assets/118424182/94f51030-6f74-4c23-8e07-5589bf27cc72)

## 회고록
### 배운 점
라파 🐵
* ```GeometryReader```를 사용함으로써 뷰의 크기와 위치에 대한 동적인 데이터에 접근할 수 있게 되었다. 이를 통해, 헤더 이미지를 스크롤에 따라 유동적으로 조절하는 **Stretchy Header**를 구현할 수 있었다.

```HeaderImageView.swift```
```swift
struct HeaderImageView: View {
    ...
    var body: some View {
        GeometryReader { geometry **in**
            let offset = geometry.frame(in: .global).minY
            setOffet(offset: offset)
            Image("food")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
                .frame(width: geometry.size.width, height: 250 + (offset > 0 ? offset : 0))
                .offset(y: (offset > 0 ? -offset : 0))
        }
        .frame(minHeight: 250)
    }
    ...
}
```

* ```MainOptionView```와 ```SideOptionView```에서 ```@Binding var totalPrice: Int```를 통해 부모 뷰(```ContentView```)에서 관리하는 ```totalPrice``` 상태를 자식 뷰에 바인딩 하여 부모 뷰와 자식 뷰 간의 상태 동기화를 수행하였다.

```MainOptionView```
```swift
struct MainOptionView: View {
    ...
    @Binding var totalPrice: Int
    ...
}
```

* ```@State```는 SwiftUI의 데이터 플로우 중 핵심적인 부분으로 뷰의 특정 상태를 관리하는 데 사용된다. 이를 사용함으로써  뷰의 상태 변화를 쉽게 관리하고 해당 상태가 변할 때마다 뷰가 자동으로 업데이트되도록 한다. 
* ```ContentView```에서 사용한 ```@State private var totalPrice = 20_000```를 통해 사용자 인터페이스의 총 가격을 관리하고 그 값이 변경될 때마다 자동으로 뷰를 업데이트하였다.

```ContentView.swift```
```swift
struct ContentView: View {
    ...
    @State  private var totalPrice = 20_000
    ...

    var body: some View {
        ...
        MainOptionView(orderModel: orderModel, totalPrice: $totalPrice)
        SideOptionView(orderModel: orderModel, totalPrice: $totalPrice)
        ...
    }
}
```

* ```OrderModel``` 클래스는 ```@ObservableObject``` 프로토콜을 채택함으로써 객체의 상태 변화를 관찰할 수 있다. 예를 들어, ```@Published``` 프로퍼티로 선언된 ```selectedSize```, ```totalPrice```, ```isPepsiSelected```, ```isSodaSelected```는 값이 변경될 때마다 해당 뷰를 업데이트하도록 알림을 보낸다.

```OrderModel.swift```
```swift
class OrderModel: ObservableObject {
    @Published var selectedSize: String = "M" {
        didSet {
            if selectedSize == "L" && oldValue != "L" {
                // 'L' 사이즈를 선택했을 때
                totalPrice += 3000
            } else if selectedSize != "L" && oldValue == "L" {
                // 'L' 사이즈 선택을 해제했을 때
                totalPrice -= 3000
            }
        }
    }
    @Published var totalPrice: Int = 20000
    @Published var isPepsiSelected: Bool = false
    @Published var isSodaSelected: Bool = false
}
```

* ```@Published```는 반응형 프로그래밍으로, 이 변수들의 값이 변할 때마다 구독하고 있는 뷰들이 자동으로 업데이트 되도록 한다. 예를 들어, 사용자가 'L' 사이즈를 선택하면 ```selectedSize``` 프로퍼티가 업데이트되고 이것은 ```totalPrice```의 자동 업데이트 되도록 한다. 이 과정은 반응형 프로그래밍에서 중요한 부분으로 데이터의 변경에 따른 자동적인 UI 업데이트를 가능하게 만든다.

레오 🐶
* 

후니 🐱
* 

---

### 잘한 점
라파 🐵
* ```GeometryReader```를 활용하는 과정에서 ```geometry.frame(in: .global).minY```를 통해 스크롤 위치에 따라 이미지의 크기와 위치를 정교하게 조절하는 로직을 구현하였다. 이는 ```GeometryReader```의 핵심 기능을 활용하여 사용자의 스크롤에 따라 동적으로 반응하는 UI를 만들 수 있었다. 그리고 ```offsetY```라는 ```@State``` 변수를 사용함으로써 스크롤 값이 변경될 때마다 UI가 실시간으로 업데이트되도록 하였다. 이러한 접근 방식으로 ```Stretchy Header```를 구현할 수 있었다.

```HeaderImageView.swift```
```swift
struct HeaderImageView: View {
    @State private var offsetY: CGFloat = CGFloat.zero
    
    var body: some View {
        GeometryReader { geometry **in**
            let offset = geometry.frame(in: .global).minY
            setOffet(offset: offset)
            Image("food")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
                .frame(width: geometry.size.width, height: 250 + (offset > 0 ? offset : 0))
                .offset(y: (offset > 0 ? -offset : 0))
        }
        .frame(minHeight: 250)
    }
    ...
}
```

레오 🐶
* 

후니 🐱
* 

---

### 아쉬운 점
라파 🐵
* MVVM 아키텍처 패턴을 활용해 보려 하였지만 제대로 활용하지 못해 아쉽다. MVVM 패턴은 데이터의 표현과 비즈니스 로직을 분리하는 데 중점을 두는데 이 미션에서는 이러한 분리가 완전히 이루어지지 않았다. 예를 들어, 뷰 모델 내에서 데이터 처리와 UI 로직이 완전히 분리되지 않아 이로 인해 코드가 길어질수록 코드의 복잡성이 증가하고 유지 보수가 어렵게 되었다.

레오 🐶
* 

후니 🐱
* 

---

### 앞으로의 계획
라파 🐵
* 뷰와 뷰 모델의 역할을 더 명확하게 분리하고 데이터 바인딩을 보다 효과적으로 활용할 수 있도록 더 공부할 것이다.

레오 🐶
* 

후니 🐱
* 

<br>

[목차로 이동 🔺](#목차)

<br>

# 9주차
[ **라파** ] 미션 결과물

![Simulator Screen Recording - iPhone 15 Pro - 2023-12-24 at 18 01 22](https://github.com/iNeptune-Code-Adventurers/iNeptune/assets/118424182/598322e1-b244-47e3-be2e-774992e933d0)

## 회고록
### 배운 점
라파 🐵
* ```UserDefaults```는 간단한 데이터를 저장하는 데 사용되는 키-값 쌍 시스템이다. ```LoginViewModel```에서 ```UserDefaults```를 사용해 사용자 정보를 저장하고 한다. 

```LoginViewModel.swift```
```swift
class LoginViewModel: ObservableObject {
    ...
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
```

레오 🐶
* 

후니 🐱
* 

---

### 잘한 점
라파 🐵
* ```@Published``` 속성 래퍼를 사용해 ```LoginViewModel```의 ```isLoggedIn``` 상태가 변경되면 ```LoginView```에서 로그인 성공 메시지를 표시하도록 구현하였다.

```LoginViewModel.swift```
```swift
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
	
	...
}
```

레오 🐶
* 

후니 🐱
* 

---

### 아쉬운 점
라파 🐵
* 이번 미션은 목표가 명확하고 실행이 간결했기 때문에 특별한 아쉬움 없이 원활하게 수행할 수 있었다.

레오 🐶
* 

후니 🐱
* 

---

### 앞으로의 계획
라파 🐵
* 드디어 마지막 미션인 10주차 미션을 할 것이다.

레오 🐶
* 

후니 🐱
* 

<br>

[목차로 이동 🔺](#목차)

<br>

# 10주차
[ **라파** ] 미션 결과물

![Simulator Screen Recording - iPhone 15 Pro - 2023-12-26 at 16 50 57](https://github.com/iNeptune-Code-Adventurers/iNeptune/assets/118424182/afb4ccc5-e997-4471-9631-2a60aab4a425)

## 회고록
### 배운 점
라파 🐵
* 카카오 로그인 기능을 통합하면서 카카오 SDK의 사용법을 배웠다. ```TenthMissionApp.swift```에서 ```KakaoSDK.initSDK```를 사용해 초기 설정을 진행하고 ```LoginViewModel```에서 ```UserApi```를 이용해 카카오 계정 로그인 및 카카오톡 앱 로그인 기능을 구현하였다.

```TenthMissionApp.swift```
```swift
import SwiftUI

import KakaoSDKCommon
import KakaoSDKAuth

@main
struct TenthMissionApp: App {
    init() {
        let kakaoAppKey = Bundle.main.infoDictionary?["KAKAO_NATIVE_APP_KEY"] ?? ""
        KakaoSDK.initSDK(appKey:kakaoAppKey as! String)
    }
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some Scene {
        WindowGroup {
            LoginView()
                .onOpenURL { url in
                    if (AuthApi.isKakaoTalkLoginUrl(url)) {
                        _ = AuthController.handleOpenUrl(url: url)
                    }
                }
        }
    }
}
```

```LoginViewModel```
```swift
import Foundation

import KakaoSDKUser

class LoginViewModel: ObservableObject {
    
    @Published var userInfo = UserInfo(id: "", pw: "")
    @Published var isLoggedIn = false {
        didSet {
            UserDefaults.standard.set(isLoggedIn, forKey: "isLoggedIn")
        }
    }
    ...
    
    init() {
        checkIfLoggedIn()
    }
    
    ...
    
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

    ...

    private func checkIfLoggedIn() {
        isLoggedIn = UserDefaults.standard.bool(forKey: "isLoggedIn")
    }
    
}
```

* ```ArticleViewModel```에서 외부 뉴스 API를 통해 뉴스 기사 데이터를 가져오는 방법을 구현하였다. 이를 통해 실시간으로 변하는 외부 데이터를 앱 내에서 처리하고 표시하는 방법을 배웠다.

```ArticleViewModel```
```swift
class ArticleViewModel: ObservableObject {

    @Published var articles = [Article]()
    
    init() {
        getArticles()
    }
    
    func getArticles() {
        let urlString = "https://newsapi.org/v2/everything?q=tesla&from=2023-11-26&sortBy=publishedAt&apiKey=1b5ea3c15eae4e45ab353b9e4ee892fb"
        guard let url = URL(string: urlString) else {
            print("Couldn't create url object")
            return
    }

    URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
        if let data = data {
            let decoder = JSONDecoder()
            if let articleService = try? decoder.decode(ArticleService.self, from: data) {
                DispatchQueue.main.async {
                    self?.articles = articleService.articles ?? []
                }
            } else {
                print("Error parsing the json")
            }
        }
    }.resume()
}
```

레오 🐶
* 

후니 🐱
* 

---

### 잘한 점
라파 🐵
* ```FilledButton``` 커스텀 뷰를 통해 다양한 스타일의 버튼을 생성할 수 있게 만들었다. 이 커스텀 뷰는 타이틀, 액션, 타이틀 색상, 배경 색상을 매개변수로 받아 사용자에게 다양한 시각적 선택을 제공한다.

```FilledButton.swift```
```swift
struct FilledButton: View {
    var title: String
    var action: () -> Void
    var titleColor: Color
    var backgroundColor: Color

    var body: some View {
        Button(action: action) {
            Text(title)
                .padding()
                .frame(maxWidth: .infinity)
                .background(backgroundColor)
                .foregroundColor(titleColor)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}
```

레오 🐶
* 

후니 🐱
* 

---

### 아쉬운 점
라파 🐵
* 현재 사용자 정보를 ```UserDefaults```에 저장하는 방식은 보안에 취약할 수 있다고 한다.  이렇게 민감한 정보들은 ```UserDefaults```에 저장하면 단순히 텍스트 형태로 저장하기 때문에 OS를 탈옥하면 내용물을 볼 수 있다.

레오 🐶
* 

후니 🐱
* 

---

### 앞으로의 계획
라파 🐵
* 앞으로는 iOS의 Keychain 같은 안전한 저장 방법을 사용하여 사용자 정보를 보호하는 방향으로 개선해볼 것이다.

레오 🐶
* 

후니 🐱
* 

<br>

[목차로 이동 🔺](#목차)
