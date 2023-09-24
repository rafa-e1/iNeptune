# iNeptune

### [ 대학교 연합 동아리 UMC - Neptune 지부 ]
**이 저장소는 부경대학교 iOS 꿈나무들의 스터디 기록을 담고 있습니다.**

![IMG_3695](https://github.com/iNeptune-Code-Adventurers/iNeptune/assets/118424182/59c669e6-d4bb-4d3b-9135-52976a02c5e4)

<br>

---

# 폴더구조
    - 라파:심범수
      - 1주차
        - 위클리 미션
          - 프로젝트
        - 스터디 미션
          - 프로젝트
          
          .
          .
          .
          
      - 10주차
        - 위클리 미션
          - 프로젝트
        - 스터디 미션
          - 프로젝트

<br>

---

# 목차
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

### Code Convention
- [Swift Style Guide](#Swift-Style-Guide)
- [Code Formatting](#Code-Formatting)
  - [import](#import)
  - [들여쓰기 및 띄어쓰기](#들여쓰기-및-띄어쓰기)
  - [줄바꿈](#줄바꿈)
  - [최대 줄 길이](#최대-줄-길이)
- [Naming](#Naming)
  - [클래스와 구조체](#클래스와-구조체)
  - [함수](#함수)
  - [변수와 상수](#변수와-상수)
  - [열거형](#열거형)
  - [프로토콜](#프로토콜)
  - [약어](#약어)
  - [일반](#일반)
- [Code Style](#Code-Style)
  - [클로저](#클로저)
  - [클래스와 구조체](#클래스와-구조체)
  - [타입](#타입)
  - [타입추론 사용](#타입추론-사용)
  - [self](#self)
  - [튜플](#튜플)
  - [final](#final)
  - [프로토콜 extension](#프로토콜-extension)
  - [사용하지 않는 코드](#사용하지-않는-코드)
  - [주석](#주석)

<br>

---

# 1주차
- 위클리 미션 실행 화면 영상 업로드
- 스터디 미션 실행 화면 영상 업로드

### 회고록
- 회고록 작성

<br>

[목차로 이동 🔺](#목차)

<br>

# 2주차
- 위클리 미션 실행화면 영상 업로드
- 스터디 미션 실행화면 영상 업로드

### 회고록
- 회고록 작성

<br>

[목차로 이동 🔺](#목차)

<br>

# 3주차
- 위클리 미션 실행화면 영상 업로드
- 스터디 미션 실행화면 영상 업로드

### 회고록
- 회고록 작성

<br>

[목차로 이동 🔺](#목차)

<br>

# 4주차
- 위클리 미션 실행화면 영상 업로드
- 스터디 미션 실행화면 영상 업로드

### 회고록
- 회고록 작성

<br>

[목차로 이동 🔺](#목차)

<br>

# 5주차
- 위클리 미션 실행화면 영상 업로드
- 스터디 미션 실행화면 영상 업로드

### 회고록
- 회고록 작성

<br>

[목차로 이동 🔺](#목차)

<br>

# 6주차
- 위클리 미션 실행화면 영상 업로드
- 스터디 미션 실행화면 영상 업로드

### 회고록
- 회고록 작성

<br>

[목차로 이동 🔺](#목차)

<br>

# 7주차
- 위클리 미션 실행화면 영상 업로드
- 스터디 미션 실행화면 영상 업로드

### 회고록
- 회고록 작성

<br>

[목차로 이동 🔺](#목차)

<br>

# 8주차
- 위클리 미션 실행화면 영상 업로드
- 스터디 미션 실행화면 영상 업로드

### 회고록
- 회고록 작성

<br>

[목차로 이동 🔺](#목차)

<br>

# 9주차
- 위클리 미션 실행화면 영상 업로드
- 스터디 미션 실행화면 영상 업로드

### 회고록
- 회고록 작성

<br>

[목차로 이동 🔺](#목차)

<br>

# 10주차
- 위클리 미션 실행화면 영상 업로드
- 스터디 미션 실행화면 영상 업로드

### 회고록
- 회고록 작성

<br>

[목차로 이동 🔺](#목차)

<br>

---

# Swift Style Guide
레오가 제안한 아이디어로 우리는 스터디 기간 동안 코드 컨벤션을 도입하려고 합니다. 
이를 위해 쓰이지 않을 것으로 판단되는 부분은 제외하고 아래 두 가지 출처에서 참고한 내용을 통합하여 사용할 것입니다.

 - [StyleShare](https://github.com/StyleShare/swift-style-guidehttps://github.com/StyleShare/swift-style-guide)
 - [토미의 개발노트](https://jusung.github.io/Swift-Code-Convention/)

이러한 코드 컨벤션 도입은 프로젝트의 코드 일관성과 가독성을 향상시키며 협업과 유지보수를 더욱 원활하게 만들 것입니다.

<br>

## Code Formatting

### [ import ]
> 모듈 임포트는 알파벳 순으로 정렬합니다. 
> 내장 프레임워크를 먼저 임포트하고, 빈 줄로 구분해 3rd-party 프레임워크를 임포트 합니다.

**✔️ Preferred**
```swift
import UIKit 
    
import SwiftyColor 
import SwiftyImage 
import Then 
import URLNavigator
```

**❌ Not Preferred**
```swift
import SwiftyColor 
import SwiftyImage 
import Then 
import UIKit 
import URLNavigator
```

<br>

> 파일이 필요로하는 최소의 모듈만 임포트 합니다. 예를들어, Foundation으로 충분하면 UIKit은 임포트 하지 않습니다.

**✔️ Preferred**
```swift
import UIKit 

var view: UIView 
var deviceModels: [String]
```
```swift
import Foundation 
var deviceModels: [String]
```

**❌ Not Preferred**
```swift
import UIKit 
import Foundation 

var view: UIView 
var deviceModels: [String]
```

<br>

[목차로 이동 🔺](#목차)

---

### [ 들여쓰기 및 띄어쓰기 ]
> 탭을 눌렀을 때 4개의 space를 사용합니다.

**✔️ Preferred**
```swift
class ViewController: UIViewController { 

	private lazy var scrollView: UIScrollView = { 
		let scrollView = UIScrollView() 
		return scrollView 
	}() 
	
}
```

**❌ Not Preferred**
```swift
class ViewController: UIViewController { 

  private lazy var scrollView: UIScrollView = { 
    let scrollView = UIScrollView() 
    return scrollView 
  }() 
	
}
```

<br>

> 콜론( : )을 쓸 때에는 콜론의 오른쪽에만 공백을 둡니다. 단, 삼항연산자의 경우에는 콜론 앞 뒤로 공백을 둡니다.

**✔️ Preferred**
```swift
class ViewController: UIViewController { 

	let names: [String: String]? 
	let someDictionary: [String: AnyObject] = [ 
		"Something 1": true, 
		"Something 2": false 
	] 

	func someFunction(a: String, b: String) { 
		// code 
	} 

} 

someFunction(a: "iNeptune", b: "Code Adventurers") 

extension ViewController: UITableViewDataSource { 
	// code 
}
```

```swift
let isHappy = true 
let feeling = isHappy ? "행복" : "불행"
```

**❌ Not Preferred**
```swift
class ViewController : UIViewController { 

	let names: [String : String]? 
	let someDictionary : [String : AnyObject] = [ 
		"Something 1" : true, 
		"Something 2" : false 
	] 

	func someFunction(a : String, b : String) { 
		// code 
	} 

} 

someFunction(a : "iNeptune", b : "Code Adventurers") 

extension ViewController : UITableViewDataSource { 
	// code 
}
```

```swift
let isHappy = true 
let feeling = isHappy ? "행복": "불행"
```

```swift
let names:[String:String]?
```

<br>

> 일반적으로 콤마(,) 뒤에는 공백을 추가합니다.

**✔️ Preferred**
```swift
let myArray = [1, 2, 3, 4, 5]
```

**❌ Not Preferred**
```swift
let myArray = [1,2,3,4,5]
```

<br>

> 연산자 앞뒤로 공백을 추가합니다.

**✔️ Preferred**
```swift
let myValue = 20 + (30 / 2) * 3
```

**❌ Not Preferred**
```swift
let myValue = 20+(30/2)*3
```

<br>

> 화살표 양쪽에 빈 공백을 추가합니다.

**✔️ Preferred**
```swift
func doSomething() -> String { 
	// ... 
}
```

```swift
func doSomething(completion: () -> Void) { 
	// ... 
}
```

**❌ Not Preferred**
```swift
func doSomething()->String { 
	// ... 
}
```

```swift
func doSomething(completion: ()->Void) { 
	// ... 
}
```

<br>

> 불필요한 괄호는 생략합니다.

**✔️ Preferred**
```swift
if userCount > 0 { ... } 
switch someValue { ... } 
let evens = userCounts.filter { number in number % 2 == 0 } 
let squares = userCounts.map { $0 * $0 }
```

**❌ Not Preferred**
```swift
if (userCount > 0) { ... } 
switch (someValue) { ... } 
let evens = userCounts.filter { (number) in number % 2 == 0 } 
let squares = userCounts.map() { $0 * $0 }
```

<br>

[목차로 이동 🔺](#목차)

---

### [ 줄바꿈 ]
> 클래스 블럭과 클래스 내부 코드 사이는 공백으로 구분합니다.

**✔️ Preferred**
```swift
class ViewController: UIViewController { 

	private lazy var scrollView: UIScrollView = { 
		let scrollView = UIScrollView() 
		return scrollView 
	}() 
	
}
```

**❌ Not Preferred**
```swift
class ViewController: UIViewController { 
	private lazy var scrollView: UIScrollView = { 
		let scrollView = UIScrollView() 
		return scrollView 
	}() 
}
```

<br> 

> 함수 정의가 최대 길이를 초과하는 경우에는 아래와 같이 줄바꿈합니다.

**✔️ Preferred**
```swift
func collectionView(
	_ collectionView: UICollectionView, 
	cellForItemAt indexPath: IndexPath 
) -> UICollectionViewCell { 
		// doSomething() 
} 

func animationController(
	forPresented presented: UIViewController, 
	presenting: UIViewController, 
	source: UIViewController 
) -> UIViewControllerAnimatedTransitioning? { 
	// doSomething() 
}
```

**❌ Not Preferred**
```swift
func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell { 
	// doSomething() 
} 

func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? { 
	// doSomething() 
}
```

<br>

> 함수를 호출하는 코드가 최대 길이를 초과하는 경우에는 파라미터 이름을 기준으로 줄바꿈합니다. 단, 파라미터에 클로저가 2개 이상 존재하는 경우에는 무조건 내려쓰기합니다.

**✔️ Preferred**
```swift
let actionSheet = UIActionSheet(
	title: "정말 계정을 삭제하실 건가요?", 
	delegate: self, 
	cancelButtonTitle: "취소", 
	destructiveButtonTitle: "삭제해주세요"
)
```

```swift
UIView.animate(
	withDuration: 0.25, 
	animations: { 
		// doSomething() 
	}, 
	completion: { finished in 
		// doSomething() 
	} 
)
```

**❌ Not Preferred**
```swift
let actionSheet = UIActionSheet(title: "정말 계정을 삭제하실 건가요?", delegate: self, cancelButtonTitle: "취소", destructiveButtonTitle: "삭제해주세요")
```

<br>

> if let 구문이 길 경우에는 줄바꿈하고 한 칸 들여씁니다.

**✔️ Preferred**
```swift
if let user = self.veryLongFunctionNameWhichReturnsOptionalUser(), 
   let name = user.veryLongFunctionNameWhichReturnsOptionalName(), 
	   user.gender == .female { 
		   // ... 
}
```

**❌ Not Preferred**
```swift
if let user = self.veryLongFunctionNameWhichReturnsOptionalUser(), let name = user.veryLongFunctionNameWhichReturnsOptionalName(), user.gender == .female { 
	// ... 
}
```

<br>

> guard let 구문이 길 경우에는 줄바꿈하고 한 칸 들여씁니다. else는 guard와 같은 들여쓰기를 적용합니다.

**✔️ Preferred**
```swift
guard let user = self.veryLongFunctionNameWhichReturnsOptionalUser(),
      let name = user.veryLongFunctionNameWhichReturnsOptionalName(),
          user.gender == .female
else {
    return
}
```

**❌ Not Preferred**
```swift
guard let user = self.veryLongFunctionNameWhichReturnsOptionalUser(), let name = user.veryLongFunctionNameWhichReturnsOptionalName(), user.gender == .female else {
    return
}
```

<br>

[목차로 이동 🔺](#목차)

---

### [ 최대 줄 길이 ]
> 한 줄은 최대 99자를 넘지 않아야 합니다.

![enter image description here](https://file.notion.so/f/f/f1912130-0409-4e90-a90f-6091ae253e73/44b18840-560b-4cc9-914e-f9c60d605f62/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA_2023-09-21_09.59.17.png?id=c9978566-dcad-4ede-be80-4ce66c2fd3d4&table=block&spaceId=f1912130-0409-4e90-a90f-6091ae253e73&expirationTimestamp=1695578400000&signature=_sT2QM4uMgVoDKv3tKLoHzN-tsqbtCFjhplcjE3V8Oc&downloadName=%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202023-09-21%2009.59.17.png)
![enter image description here](https://file.notion.so/f/f/f1912130-0409-4e90-a90f-6091ae253e73/9293c121-e0cc-40c2-9079-21cba8611c87/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA_2023-09-21_10.03.53.png?id=fe049281-220c-4d7a-865b-415400f400e3&table=block&spaceId=f1912130-0409-4e90-a90f-6091ae253e73&expirationTimestamp=1695578400000&signature=LqAa_BXiCJE3kOQcpb9dfUYZFX29AcQx3qfrAfuJOOk&downloadName=%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202023-09-21%2010.03.53.png)

<br>

[목차로 이동 🔺](#목차)

---

##  Naming

### [ 클래스와 구조체 ]
> 클래스와 구조체의 이름에는 UpperCamelCase를 사용합니다.

**✔️ Preferred**
```swift
class SomeClass {
    // class definition goes here
}

struct SomeStructure {
    // structure definition goes here
}
```

**❌ Not Preferred**
```swift
class someClass {
    // class definition goes here
}

struct someStructure {
    // structure definition goes here
}
```

<br>

[목차로 이동 🔺](#목차)

---

### [ 함수 ]
> 함수 이름에는 lowerCamelCase를 사용합니다.

**✔️ Preferred**
```swift
func doSomething(a: String) -> String?
```

**❌ Not Preferred**
```swift
func DoSomething(b: String) -> String?
```

<br>

> 함수 이름에는 되도록  `get`을 붙이지 않습니다.

**✔️ Preferred**
```swift
func name(for user: User) -> String?
```

**❌ Not Preferred**
```swift
func getName(for user: User) -> String?
```

<br>

> ‘Tap(눌렀다 뗌)’은 UIControlEvents의 .touchUpInside에 대응하고, ‘Press(누름)’는 .touchDown에 대응합니다. 
> ’will’은 특정 행위가 일어나기 직전이고, ’did’는 특정 행위가 일어난 직후입니다. 
> ’should’는 일반적으로 Bool을 반환하는 함수에 사용됩니다.
>
> Action 함수의 네이밍은 '주어 + 동사 + 목적어' 형태를 사용합니다.

**✔️ Preferred**
```swift
func backButtonDidTap() {
    // ...
}
```

**❌ Not Preferred**
```swift
func back() {
    // ...
}

func pressBack() {
    // ...
}
```

<br>

[목차로 이동 🔺](#목차)

---

### [ 변수와 상수 ]
> 변수와 상수 이름에는 lowerCamelCase를 사용합니다.

**✔️ Preferred**
```swift
let maximumNumberOfLines = 3
```

**❌ Not Preferred**
```swift
let MaximumNumberOfLines = 3
let MAX_LINES = 3
```

<br>

[목차로 이동 🔺](#목차)

---

### [ 열거형 ]
> enum의 이름에는 UpperCamelCase를 사용하고 enum의 각 case에는 lowerCamelCase를 사용합니다.

**✔️ Preferred**
```swift
enum Result {
    case .success
    case .failure
}
```

**❌ Not Preferred**
```swift
enum Result {
    case .Success
    case .Failure
}

enum result {
    case .Success
    case .Failure
}
```

<br>

[목차로 이동 🔺](#목차)

---

### [ 프로토콜 ]
> 프로토콜의 이름에는 UpperCamelCase를 사용합니다. 
> 구조체나 클래스에서 프로토콜을 채택할 때는 콜론과 빈칸을 넣어 구분하여 명시합니다. 
> extension을 통해 채택할 때도 동일하게 적용됩니다.

**✔️ Preferred**
```swift
protocol SomeProtocol {
    // protocol definition goes here
}

struct SomeStructure: SomeProtocol, AnotherProtocol {
    // structure definition goes here
}

class SomeClass: SomeSuperclass, SomeProtocol, AnotherProtocol {
    // class definition goes here
}

extension UIViewController: SomeProtocol, AnotherProtocol {
    // doSomething()
}
```

**❌ Not Preferred**
```swift
protocol someProtocol {
    // protocol definition goes here
}

struct some_Structure:SomeProtocol, AnotherProtocol {
    // structure definition goes here
}

class Some_Class:SomeSuperclass, SomeProtocol, AnotherProtocol {
    // class definition goes here
}

extension UIViewController:SomeProtocol, AnotherProtocol {
    // doSomething()
}
```

<br>

[목차로 이동 🔺](#목차)

---

### [ 약어 ]
> 약어로 시작하는 경우 소문자로 표기하고, 그 외의 경우에는 항상 대문자로 표기합니다.

**✔️ Preferred**
```swift
let userID: Int?
let html: String?
let websiteURL: URL?
let urlString: String?
```

**❌ Not Preferred**
```swift
let userId: Int?
let HTML: String?
let websiteUrl: NSURL?
let URLString: String?
```

<br>

[목차로 이동 🔺](#목차)

---

### [ 일반 ]
> 일반적인 부분이 앞에두고 구체적인 부분을 뒤에 둡니다.

**✔️ Preferred**
```swift
let titleMarginRight: CGFloat
let titleMarginLeft: CGFloat
let bodyMarginRight: CGFloat
let bodyMarginLeft: CGFloat
```

**❌ Not Preferred**
```swift
let rightTitleMargin: CGFloat
let leftTitleMargin: CGFloat
let bodyRightMargin: CGFloat
let bodyLeftMargin: CGFloat
```

<br>

> 생략시 사용이 모호해지는 타입은 이름에 타입에 대한 힌트를 포함시킵니다.

**✔️ Preferred**
```swift
let titleText: String
let cancelButton: UIButton
```

**❌ Not Preferred**
```swift
let title: String
let cancel: UIButton
```

<br>

[목차로 이동 🔺](#목차)

---

##  Code Style

### [ 클로저 ]
> 파라미터와 리턴 타입이 없는 클로저 정의시에는 () -> Void 를 사용합니다.

**✔️ Preferred**
```swift
let completionBlock: (() -> Void)?
```

**❌ Not Preferred**
```swift
let completionBlock: (() -> ())?
let completionBlock: ((Void) -> (Void))?
```

<br>

> 클로저 정의시 파라미터에는 괄호를 사용하지 않습니다.

**✔️ Preferred**
```swift
{ operation, responseObject in
    // doSomething()
}
```

**❌ Not Preferred**
```swift
{ (operation, responseObject) in
    // doSomething()
}
```

<br>

> 클로저 정의시 가능한 경우 타입 정의를 생략합니다.

**✔️ Preferred**
```swift
completion: { finished in
    // doSomething()
}
```

**❌ Not Preferred**
```swift
completion: { (finished: Bool) -> Void in
    // doSomething()
}
```

<br>

> 클로저 호출시 또 다른 유일한 클로저를 마지막 파라미터로 받는 경우, 파라미터 이름을 생략합니다.

**✔️ Preferred**
```swift
UIView.animate(withDuration: 0.5) {
    // doSomething()
}
```

**❌ Not Preferred**
```swift
UIView.animate(withDuration: 0.5, animations: { () -> Void in
    // doSomething()
})
```

<br>

> 사용하지 않는 파라미터는 _를 사용해 표시합니다.

**✔️ Preferred**
```swift
someAsyncThing() { _, _, argument3 in
    print(argument3)
}
```

**❌ Not Preferred**
```swift
someAsyncThing() { argument1, argument2, argument3 in
    print(argument3)
}
```

<br>

> 한 줄 클로저는 반드시 각 괄호 양쪽을 공백을 추가해야 합니다.

**✔️ Preferred**
```swift
let evenSquares = numbers.filter { $0 % 2 == 0 }.map { $0 * $0 }
```

**❌ Not Preferred**
```swift
let evenSquares = numbers.filter {$0 % 2 == 0}.map { $0 * $0 }
```

<br>

[목차로 이동 🔺](#목차)

---

### [ 클래스와 구조체 ]
> 구조체를 생성할 때는 Swift 구조체 생성자를 사용합니다.

**✔️ Preferred**
```swift
let frame = CGRect(x: 0, y: 0, width: 100, height: 100)
```

**❌ Not Preferred**
```swift
let frame = CGRectMake(0, 0, 100, 100)
```

<br>

[목차로 이동 🔺](#목차)

---

### [ 타입 ]
> Array<T>와, Dictionary<T: U> 보다는 [T], [T: U]를 사용합니다.

**✔️ Preferred**
```swift
var messages: [String]?
var names: [Int: String]?
```

**❌ Not Preferred**
```swift
var messages: Array<String>?
var names: Dictionary<Int, String>?
```

<br>

[목차로 이동 🔺](#목차)

---

### [ 타입추론 사용 ]
> 컴파일러가 문맥속에서 타입을 추론할 수 있으면 더 간결한 코드를 위해 타입을 생략합니다.

**✔️ Preferred**
```swift
let selector = #selector(viewDidLoad)
view.backgroundColor = .red
let toView = context.view(forKey: .to)
let view = UIView(frame: .zero)
```

**❌ Not Preferred**
```swift
let selector = #selector(ViewController.viewDidLoad)
view.backgroundColor = UIColor.red
let toView = context.view(forKey: UITransitionContextViewKey.to)
let view = UIView(frame: CGRect.zero)
```

<br>

[목차로 이동 🔺](#목차)

---

### [ self ]
> 문법의 모호함을 제거하기 위해 언어에서 필수로 요구하지 않는 이상 self는 사용하지 않습니다.

**✔️ Preferred**
```swift
final class Listing {
    private let isFamilyFriendly: Bool
    private var capacity: Int
  
    init(capacity: Int, allowsPets: Bool) {
        ✅ Preferred 
        self.capacity = capacity
        isFamilyFriendly = !allowsPets
    }

    private func increaseCapacity(by amount: Int) {
        ✅ Preferred 
        capacity += amount

        ✅ Preferred 
        save()
    }
}
```

**❌ Not Preferred**
```swift
final class Listing {
    private let isFamilyFriendly: Bool
    private var capacity: Int
  
    init(capacity: Int, allowsPets: Bool) {
        ⛔️ Not Preferred 
        self.capacity = capacity
        self.isFamilyFriendly = !allowsPets
    }

    private func increaseCapacity(by amount: Int) {
        ⛔️ Not Preferred 
        self.capacity += amount

        ⛔️ Not Preferred 
        self.save()
  }
}
```

<br>

[목차로 이동 🔺](#목차)

---

### [ 튜플 ]
> 튜플의 맴버에는 명확성을 위해 이름을 붙여줍니다. 
> (만약 필드가 3개를 넘는 경우 struct를 사용을 고려해보는 것을 권장합니다.)

**✔️ Preferred**
```swift
func whatever() -> (x: Int, y: Int) {
    return (x: 4, y: 4)
}
```

**❌ Not Preferred**
```swift
func whatever() -> (Int, Int) {
    return (4, 4)
}
```

<br>

[목차로 이동 🔺](#목차)

---

### [ final ]
> 더 이상 상속이 발생하지 않는 클래스는 항상 final 키워드로 선언합니다.

**✔️ Preferred**
```swift
final class ViewController: UIViewController {
    // ...
}
```

**❌ Not Preferred**
```swift
class ViewController: UIViewController {
    // ...
}
```

<br>

[목차로 이동 🔺](#목차)

---

### [ 프로토콜 extension ]
> 프로토콜을 적용할 때는 extension을 만들어서 관련된 매소드를 모아둡니다.

**✔️ Preferred**
```swift
final class MyViewController: UIViewController {
    // ...
}
extension MyViewController: UITableViewDataSource {
    // ...
}
extension MyViewController: UITableViewDelegate {
    // ...
}
```

**❌ Not Preferred**
```swift
final class MyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // ...
}
```

<br>

> 생략시 사용이 모호해지는 타입은 이름에 타입에 대한 힌트를 포함시킵니다.

**✔️ Preferred**
```swift
let titleText: String
let cancelButton: UIButton
```

**❌ Not Preferred**
```swift
let title: String
let cancel: UIButton
```

<br>

[목차로 이동 🔺](#목차)

---

### [ 사용하지 않는 코드 ]
> Xcode가 자동으로 생성한 템플릿을 포함한 사용하지 않는 코드는 placeholder 코멘트를 포함해 모두 제거합니다.

**✔️ Preferred**
```swift
override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return Database.contacts.count
}
```

**❌ Not Preferred**
```swift
override func didReceiveMemoryWarning() {
  super.didReceiveMemoryWarning()
  // Dispose of any resources that can be recreated.
}

override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  // #warning Incomplete implementation, return the number of rows
  return Database.contacts.count
}
```

<br>

[목차로 이동 🔺](#목차)

---

### [ 주석 ]
> ///를 사용해서 문서화에 사용되는 주석을 남깁니다.

**✔️ Preferred**
```swift
/// 사용자 프로필을 그려주는 뷰
class ProfileView: UIView {

    /// 사용자 닉네임을 그려주는 라벨
    var nameLabel: UILabel!
}
```

**❌ Not Preferred**
```swift
// 사용자 프로필을 그려주는 뷰
class ProfileView: UIView {

    // 사용자 닉네임을 그려주는 라벨
    var nameLabel: UILabel!
}
```

<br>

> // MARK:를 사용해서 연관된 코드를 구분짓습니다. (MARK 구문 위와 아래에는 공백이 필요합니다.)

**✔️ Preferred**
```swift
// MARK: Init

override init(frame: CGRect) {
    // doSomething()
}

deinit {
    // doSomething()
}


// MARK: Layout

override func layoutSubviews() {
    // doSomething()
}


// MARK: Actions

override func menuButtonDidTap() {
    // doSomething()
}
```

**❌ Not Preferred**
```swift
// MARK: Init
override init(frame: CGRect) {
    // doSomething()
}

deinit {
    // doSomething()
}

// MARK: Layout
override func layoutSubviews() {
    // doSomething()
}

// MARK: Actions
override func menuButtonDidTap() {
    // doSomething()
}
```
