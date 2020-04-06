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