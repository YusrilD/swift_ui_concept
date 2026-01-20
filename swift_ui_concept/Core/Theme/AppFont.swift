//
//  AppFont.swift
//  swift_ui_concept
//
//  Created by Triv on 20/01/26.
//

import SwiftUI

enum AppFont {
    static func regular(_ size: CGFloat) -> Font {
        .custom("Inter-Regular", size: size)
    }

    static func medium(_ size: CGFloat) -> Font {
        .custom("Inter-Medium", size: size)
    }

    static func semibold(_ size: CGFloat) -> Font {
        .custom("Inter-SemiBold", size: size)
    }

    static func bold(_ size: CGFloat) -> Font {
        .custom("Inter-Bold", size: size)
    }
}
