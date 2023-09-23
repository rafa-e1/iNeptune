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
- [Swift Style Guide](#Swift-Style-Guide)

<br>

---

# 1주차
- 위클리 미션 실행 화면 영상 업로드
- 스터디 미션 실행 화면 영상 업로드

### 회고록
- 회고록 작성

<br>

# 2주차
- 위클리 미션 실행화면 영상 업로드
- 스터디 미션 실행화면 영상 업로드

### 회고록
- 회고록 작성

<br>

# 3주차
- 위클리 미션 실행화면 영상 업로드
- 스터디 미션 실행화면 영상 업로드

### 회고록
- 회고록 작성

<br>

# 4주차
- 위클리 미션 실행화면 영상 업로드
- 스터디 미션 실행화면 영상 업로드

### 회고록
- 회고록 작성

<br>

# 5주차
- 위클리 미션 실행화면 영상 업로드
- 스터디 미션 실행화면 영상 업로드

### 회고록
- 회고록 작성

<br>

# 6주차
- 위클리 미션 실행화면 영상 업로드
- 스터디 미션 실행화면 영상 업로드

### 회고록
- 회고록 작성

<br>

# 7주차
- 위클리 미션 실행화면 영상 업로드
- 스터디 미션 실행화면 영상 업로드

### 회고록
- 회고록 작성

<br>

# 8주차
- 위클리 미션 실행화면 영상 업로드
- 스터디 미션 실행화면 영상 업로드

### 회고록
- 회고록 작성

<br>

# 9주차
- 위클리 미션 실행화면 영상 업로드
- 스터디 미션 실행화면 영상 업로드

### 회고록
- 회고록 작성

<br>

# 10주차
- 위클리 미션 실행화면 영상 업로드
- 스터디 미션 실행화면 영상 업로드

### 회고록
- 회고록 작성

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

---

<br>

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

---

<br>

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

---

<br>

### [ 최대 줄 길이 ]
> 한 줄은 최대 99자를 넘지 않아야 합니다.

![enter image description here](https://file.notion.so/f/f/f1912130-0409-4e90-a90f-6091ae253e73/44b18840-560b-4cc9-914e-f9c60d605f62/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA_2023-09-21_09.59.17.png?id=c9978566-dcad-4ede-be80-4ce66c2fd3d4&table=block&spaceId=f1912130-0409-4e90-a90f-6091ae253e73&expirationTimestamp=1695578400000&signature=_sT2QM4uMgVoDKv3tKLoHzN-tsqbtCFjhplcjE3V8Oc&downloadName=%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202023-09-21%2009.59.17.png)
![enter image description here](https://file.notion.so/f/f/f1912130-0409-4e90-a90f-6091ae253e73/9293c121-e0cc-40c2-9079-21cba8611c87/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA_2023-09-21_10.03.53.png?id=fe049281-220c-4d7a-865b-415400f400e3&table=block&spaceId=f1912130-0409-4e90-a90f-6091ae253e73&expirationTimestamp=1695578400000&signature=LqAa_BXiCJE3kOQcpb9dfUYZFX29AcQx3qfrAfuJOOk&downloadName=%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202023-09-21%2010.03.53.png)

<br>

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
