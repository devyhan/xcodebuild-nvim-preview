# xcodebuild-nvim-preview

Swift Package enabling preview in Neovim when using xcodebuild.nvim

See [xcodebuild.nvim](https://github.com/wojciech-kulik/xcodebuild.nvim)

## Usage

You need to setup desired preview in `AppDelegate` in `application(_:didFinishLaunchingWithOptions:)` method.

```swift
import XcodebuildNvimPreview

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // ...

    XcodebuildNvimPreview.setup(view: MainView())

    return true
}
```
