//
//  LinearGradient.swift
//  SharedUI
//
//  Created by vagner reis on 29/09/24.
//

import Foundation
import SwiftUI

public extension LinearGradient {

    static let primaryGradient = LinearGradient(colors: [ Color.custom(.primary),Color.custom(.primaryDark) ], startPoint: .top, endPoint: .bottom)
    
    static let primaryLightGradient = LinearGradient(colors: [ Color.custom(.primaryLight),Color.custom(.primaryUltraLight) ], startPoint: .top, endPoint: .bottom)
    
    static let primaryDarkGradient = LinearGradient(colors: [ Color.custom(.primaryLight),Color.custom(.primary) ], startPoint: .top, endPoint: .bottom)
    
    static let whiteGradient = LinearGradient(colors: [ Color.custom(.white),Color.custom(.whiteSnow) ], startPoint: .top, endPoint: .bottom)
    
    static let sucessGradient = LinearGradient(colors: [ Color.custom(.success),Color.custom(.successDark) ], startPoint: .top, endPoint: .bottom)
    
    static let sucessGradientLeading = LinearGradient(colors: [ Color.custom(.success),Color.custom(.successDark).opacity(0.6) ], startPoint: .leading, endPoint: .trailing)
    
    static let sucessGradientTheme = LinearGradient(colors: [ Color.custom(.success),Color.custom(.successDark) ], startPoint: .top, endPoint: .bottom)
    
    static let infoLight = LinearGradient(colors: [ Color.custom(.primaryUltraLight),Color.custom(.primaryLight).opacity(0.9) ], startPoint: .top, endPoint: .bottom)
    
    static let clear = LinearGradient(colors: [ .clear ], startPoint: .top, endPoint: .bottom)
    
}
