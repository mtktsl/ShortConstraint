# ShortConstraint

ShortConstraint keeps UIKit’s idioms but makes constraint code **shorter, chainable, and more expressive**—without hiding the underlying power of `NSLayoutConstraint`.

---

## ✨ Features
- Fluent, chainable syntax for constraints  
- Group constraints into a single reference for later activation/deactivation  
- Activate/deactivate constraints selectively (by anchor type)  
- Retrieve constraints for fine-tuning (priority, constant, etc.)  
- 100% UIKit-compatible—no magic, just cleaner syntax  

---

## ⚙️ Requirements
- Swift 6.2
- Minimum iOS target: v12

## 🚀 Installation

Add `ShortConstraint` to your project via **Swift Package Manager**:

```swift
dependencies: [
    .package(url: "https://github.com/yourusername/ShortConstraint.git", from: "1.0.0")
]
```
## 🏁 Quick Start

UIKit way:
```swift
NSLayoutConstraint.activate([
    myView.leadingAnchor.constraint(equalTo: targetView.leadingAnchor),
    myView.topAnchor.constraint(equalTo: targetView.topAnchor),
    myView.trailingAnchor.constraint(equalTo: targetView.trailingAnchor),
    myView.bottomAnchor.constraint(equalTo: targetView.bottomAnchor)
])
```

ShortConstraint way:

```swift
myView
    .constraint
    .leading(equalTo: targetView.leadingAnchor)
    .top(equalTo: targetView.topAnchor)
    .trailing(equalTo: targetView.trailingAnchor)
    .bottom(equalTo: targetView.bottomAnchor)
    .activate()
```

Notice how the keywords `myView`, `constraint`, and `anchor` are no longer repeated on every line. The result is shorter, more declarative, and easier to read.

## 📚 Examples

1. Grouping Constraints

```swift
let constraints = myView
    .constraint
    .leading(equalTo: targetView.leadingAnchor)
    .top(equalTo: targetView.topAnchor)
    .trailing(equalTo: targetView.trailingAnchor)
    .activate()

// Later...
constraints.deactivate(.top)       // deactivate only top
constraints.activate(.leading)     // activate only leading
constraints.deactivate()           // deactivate all
constraints.activate()             // activate all
```

2. Adjusting Priorities

```swift
let constraints = myView
    .constraint
    .top(equalTo: targetView.topAnchor)
    .activate()

// Fine-tune later
constraints.getFirst(.top)?.priority = .defaultLow
```

3. Animating Constraint Changes

```swift
let constraints = myView
    .constraint
    .top(equalTo: targetView.topAnchor, constant: 20)
    .activate()

UIView.animate(withDuration: 0.3) {
    constraints.getFirst(.top)?.constant = 100
    myView.superview?.layoutIfNeeded()
}
```

4. Adaptive Layouts with Named Groups

```swift
let expanded = myView
    .constraint
    .leading(equalTo: targetView.leadingAnchor)
    .top(equalTo: targetView.topAnchor)
    .trailing(equalTo: targetView.trailingAnchor)
    .bottom(equalTo: targetView.bottomAnchor)

let centered = myView
    .constraint
    .centerX(equalTo: targetView.centerXAnchor)
    .centerY(equalTo: targetView.centerYAnchor)

// Switch layouts
expanded.deactivate()
centered.activate()
```

## 🛠 Future Plans

- Ability to give names to constraints in order to retrieve them more easily once defined in a group.  
  Example:
```swift
  let constraints = myView
      .constraint
      .top(equalTo: targetView.topAnchor).named("headerTop")
      .leading(equalTo: targetView.leadingAnchor).named("headerLeading")
      .activate()

  // Later...
  constraints.get("headerTop")?.priority = .defaultLow
  constraints.get("headerLeading")?.constant = 24
```
