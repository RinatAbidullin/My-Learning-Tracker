# Swift

## Value / Reference types

В Swift суммарно существует шесть типов данных:

четыре Named types или Nominal types:

- `protocol`: Value type (но может быть и Reference type)

- `struct`: Value type

- `enum`: Value type

- `class`: Reference type

и два Unnamed/Compound types:

- `tuple`: Value type

- `function`: Reference type

## Случаи, когда Value type размещается в heap

#### 1. Когда согласуется/соответствует протоколу (when conforming to a protocol)

Apart from the allocation cost, extra overhead appears when value type is stored within an existential container and exceeds 3 machine words length.

Existential container is a generic container for a value of unknown runtime type. Small value types can be inlined inside the existential container. The bigger ones are allocated on the heap and reference to them is stored inside the existential container buffer. The lifetime of such values is managed by Value Witness Table. This introduces reference counting overhead and a couple of levels of indirection when calling protocol methods

```swift
protocol Bar {}
struct Baz: Bar {}
```

#### 2. Когда миксуются Value и Reference types (when mixing Value and Reference types)

```swift
// Class inside a struct
class A {}
struct B {
    let a = A()
}

// Struct inside a class
struct C {}
class D {
    let c = C()
}
```

Оба случая структур `B` и `C` размещаются в куче (heap)

#### 3. Generic value types

```swift
struct Bas<T> {
    var x: T
    init(xx: T) {
        x = xx
    }
}
```

#### 4. Escaping closure captures.

Swift’s closure model is that all local variables are captured by reference. Some of them may still be promoted to the stack as explained in CapturePromotion.

#### 5. Inout arguments.

Let’s generate SIL for foo(x:) that accepts an inout argument:

```swift
func foo(x: inout Int) {
    x += 1
}
```

## How to make UITableViewCells auto resize to their content

```swift
override func viewDidLoad() {
    tableView.rowHeight = UITableView.automaticDimension
    tableView.estimatedRowHeight = 100
}
```
```swift
override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableView.automaticDimension
}
```
```swift
override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableView.automaticDimension
}
```
In order to make UITableViewAutomaticDimension work you have to set all left, right, bottom, and top constraints relative to cell `contentView`.

Note: You may need to put this code inside your cellForRowAt

```swift
yourCellName.sizeToFit()
cell.textLabel?.numberOfLines = 0
```

## Создаем проект без сториборда

```swift
func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let windowScene = (scene as? UIWindowScene) else { return }
        
    let window = UIWindow(windowScene: windowScene)
        
    let mainViewController = SomeViewController()
        
    let navigationController = UINavigationController(rootViewController: mainViewController)
        
    window.rootViewController = navigationController
        
    window.makeKeyAndVisible()
    self.window = window
}
```

## Альтернативный вариант тернарного оператора

```swift
let host = challenge.protectionSpace.host
let port = challenge.protectionSpace.port
let scheme = challenge.protectionSpace.protocol // <- Может быть nil

let hostWithPortAndScheme = scheme.map { "\($0)://\(host):\(port)" } ?? "\(host):\(port)"
```

```swift
let date = OnboardingAssembly.onboardingEndDate.map({ Date() < $0 }) ?? true
```

## Директории на iOS

```swift
func NSTemporaryDirectory() -> String
func NSHomeDirectory() -> String
func NSHomeDirectoryForUser(String?) -> String?
```

## Custom init()

### UIView

```swift
init(frame: CGRect, someProperty: SomeType) {
    self.someProperty = someProperty
    super.init(frame: frame)
}

required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}
```

### UIViewController

```swift
init(someProperty: SomeType) {
    self.someProperty = someProperty
    super.init(nibName: nil, bundle: nil)
}

required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}
```