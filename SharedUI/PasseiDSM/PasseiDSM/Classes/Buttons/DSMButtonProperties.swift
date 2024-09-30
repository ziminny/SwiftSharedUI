//
//  DSMButtonProperties.swift
//  SharedUI
//
//  Created by vagner reis on 27/09/24.
//

import Foundation
import SwiftUI

public struct DSMButtonProperties<BackgroundDesign: DSMConformableButtonBackground> {
    let title: DSMPredefinedTitle
    let backgroundLight: BackgroundDesign
    let backgroundNight: BackgroundDesign
    let foregroundLight: Color
    let foregroundNight: Color
    let imageLightName: String?
    let imageDarkName: String?
    let onPressed: () -> Void
    
    public init(
        title: DSMPredefinedTitle,
        backgroundLight: BackgroundDesign,
        backgroundNight: BackgroundDesign,
        foregroundLight: Color,
        foregroundNight: Color,
        imageLightName: String? = nil,
        imageDarkName: String? = nil,
        onPressed: @escaping () -> Void) {
        self.title = title
        self.backgroundLight = backgroundLight
        self.backgroundNight = backgroundNight
        self.foregroundLight = foregroundLight
        self.foregroundNight = foregroundNight
        self.imageDarkName = imageDarkName
        self.imageLightName = imageLightName
        self.onPressed = onPressed
    }
    
    internal func background(colorScheme: ColorScheme) -> BackgroundDesign {
        return colorScheme == .dark ? backgroundNight : backgroundLight
        
    }
    
    internal func foreground(colorScheme: ColorScheme) -> Color {
        colorScheme == .dark ? foregroundNight : foregroundLight
    }
    
    internal func imageName(colorScheme: ColorScheme) -> String? {
        colorScheme == .dark ? imageDarkName : imageLightName
    }
}
