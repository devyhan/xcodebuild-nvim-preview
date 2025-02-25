//
//  View+setup.swift
//
//  Created by Wojciech Kulik on 25/02/2025.
//  Copyright © 2025 Wojciech Kulik. All rights reserved.
//

#if canImport(SwiftUI)
    import SwiftUI

    public extension View {
        @ViewBuilder
        func setupNvimPreview(view: @escaping () -> some View) -> some View {
            let arguments = ProcessInfo.processInfo.arguments

            if arguments.contains("--xcodebuild-nvim-snapshot") {
                onAppear { view().snapshot() }
                    .onReceive(observeHotReload()) { view().snapshot() }
            } else {
                self
            }
        }
    }
#endif
