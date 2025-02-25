//
//  XcodebuildNvimPreview+SwiftUI.swift
//
//  Created by Wojciech Kulik on 23/02/2025.
//  Copyright © 2025 Wojciech Kulik. All rights reserved.
//

#if canImport(SwiftUI)
    import SwiftUI

    public extension XcodebuildNvimPreview {
        static func setup(view: any View) {
            let arguments = ProcessInfo.processInfo.arguments

            if arguments.contains("--xcodebuild-nvim-snapshot") {
                view.snapshot()
            }
        }
    }
#endif
