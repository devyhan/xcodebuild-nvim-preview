# xcodebuild-nvim-preview

Swift Package for previewing SwiftUI, UIKit, and AppKit views in Neovim using [xcodebuild.nvim].

## Usage

### SwiftUI (supports hot reload)

```swift
import SwiftUI
import XcodebuildNvimPreview

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
              .setupNvimPreview { HomeView() }
        }
    }
}
```

### UIKit (similar for AppKit)

```swift
import XcodebuildNvimPreview

func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
) -> Bool {
    // ...

    XcodebuildNvimPreview.setup(view: MainView())

    // (optional) enable hot reload for preview (requires integration with `Inject`)
    observeHotReload()
        .sink { XcodebuildNvimPreview.setup(view: HomeView()) }
        .store(in: &cancellables)

    return true
}
```

Read more: [Wiki](https://github.com/wojciech-kulik/xcodebuild.nvim/wiki/Integrations#-previews)

[xcodebuild.nvim]: https://github.com/wojciech-kulik/xcodebuild.nvim
