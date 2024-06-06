# Test repository for the Ready for Swift 6 project

Run a build with a particular toolchain:

```
env DEVELOPER_DIR=/Applications/Xcode-15.3.0.app xcrun --toolchain org.swift.600202404221a swift build
```

This will run the build in language mode 5 and not show any concurrency warnings.

In order to show concurrency warnings, run

```
env DEVELOPER_DIR=/Applications/Xcode-15.4.0.app xcrun --toolchain org.swift.600202405261a swift build -Xswiftc -strict-concurrency=complete
```

In order to run in Swift 6 language mode, add `swiftLanguageVersions: [.version("6")]` to the `Package.swift` manifest (see branch `language-mode-6`):

```swift
let package = Package(
    name: "ReadyForSwift6Test",
    products: [
        .library(name: "ReadyForSwift6Test", targets: ["ReadyForSwift6Test"]),
    ],
    targets: [
        .target(name: "ReadyForSwift6Test"),
    ],
    swiftLanguageVersions: [.version("6")]
)
```

This will raise concurrency errors instead of warnings.

Alternatively, run the following build command without modifying your manifest:

```
env DEVELOPER_DIR=/Applications/Xcode-15.4.0.app xcrun --toolchain org.swift.600202405261a swift build -Xswiftc -swift-version -Xswiftc 6
```