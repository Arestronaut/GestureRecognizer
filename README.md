# GestureRecognizer

This package contains a generic wrapper for `UIGestureRecognizer` with the primary objective of removing the need for a `selector`.

## Usage

The usage of this package remains quite simple: 
1. First define the gesture recognizer inside the context of the class (Note: Due to an unknown reason it is required to do so outside the method scope): 
```swift 
lazy var gestureRecognizer: GestureRecognizer<UITapGestureRecognizer> = .init {
    print("boop")
}
```

2. Add the `gestureRecognizer` to the view: 
```swift
override func viewDidLoad() {
    super.viewDidLoad()

    tapableView.addGestureRecognizer(gestureRecognizer)
}
```

3. Optionally you can assign the `UIGestureRecognizerDelegate` to the `gestureRecognizer`

4. Done 🥳🦦