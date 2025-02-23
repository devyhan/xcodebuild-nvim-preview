# xcodebuild-nvim-preview

Swift Package for previewing SwiftUI, UIKit, and AppKit views in Neovim using [xcodebuild.nvim].

## Usage

```swift
import XcodebuildNvimPreview

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // ...

    XcodebuildNvimPreview.setup(view: MainView())

    return true
}
```

Read more: [Wiki](https://github.com/wojciech-kulik/xcodebuild.nvim/wiki/Integrations#%EF%B8%8F-previews)

[xcodebuild.nvim]: https://github.com/wojciech-kulik/xcodebuild.nvim
