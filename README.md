# SimpleChainableStackUI

Declare UI like SwiftUI base on UIStackView.

## Chainable

### Basic

```swift
var label: UILabel!

UILabel()
    .text("Text")
    .font(.systemFont(ofSize: 20))
    .assign(to: &label)
    .apply { label in
        label.textColor = .darkGray
    }
```

### Any property

```swift
class MyView : UIView {
    var text: String?
}

MyView()
    .set(\.text, to: "Text")
    .set(\.frame, to: .zero)
```

### Observable

Use `@Observable` and `$`.

```swift
class MyViewController : UIViewController {
    
    @Observable var buttonTitle: String? = "Text"
    @Observable var buttonHidden = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIButton()
            .observableTitle($buttonTitle, for: .normal)
            .observableHidden($buttonHidden)
    }
    
    func update() {
        buttonTitle = "New Text"
        buttonHidden.toggle()
    }
}
```

### Action

```swift
UIView()
    .onTapGesture {
        print("Hello")
    }
UIButton()
    .onTouchUpInside {
        print("Hello")
    }
UISwitch()
    .onValueChanged { isOn in
        print("\(isOn)")
    }
```

## Stack

- VStack and HStack
- ForIn
- If Statement
- ViewContainer
- Spacer and bindHidden

```swift
let label: UILabel!

let container = ViewContainer {
    VStack {
        UILabel()
            .text("Text")
            .size(height: 28)
            .assign(to: &label)
        Spacer()
            .bindHidden(to: label)
        HStack(distribution: .fillEqually) {
            for text in ["A", "B", "C"] {
                UILabel().text(text)
            }
            if label.isHidden {
                UILabel().text("Text")
            }
        }
        UIButton(type: .system)
            .title("Hide Label", for: .normal)
            .onTouchUpInside {
                label.isHidden = true //Spacer will be hidden too.
            }
    }
}.frame(CGRect(x: 0, y: 0, width: 240, height: 120))
```

## Requirements

- iOS 10.0+

## Installation

SimpleChainableStackUI is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SimpleChainableStackUI'
```

## Author

Orisun, wdyang13@163.com

## License

SimpleChainableStackUI is available under the MIT license. See the LICENSE file for more info.
