//
//  Color.swift
//  SharedUI
//
//  Created by vagner reis on 29/09/24.
//

import Foundation
import SwiftUI

public extension Color {
    
    static func custom(_ color: SelectedColor) -> Color { color.rawValue }
    
    enum SelectedColor {
        
        ///  - Hexadecimal: #244269
        ///  - RGB: red: 36/255, green: 66/255, blue: 105/255
        case primaryClear
        
        ///  - Hexadecimal: #3A577D
        ///  - RGB: red: 58/255, green: 87/255, blue: 125/255
        case primaryUltraLight
        
        ///  - Hexadecimal: #3A577D
        ///  - RGB: red: 58/255, green: 87/255, blue: 125/255
        case primaryLight
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case primary
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case primaryDark
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case grayscaleUltraLight
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case grayscaleLight
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case grayscale
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case grayscaleDark
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case grayscaleUltraDark
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case successLight
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case success
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case successDark
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case warningLight
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case warning
        
        /// Cor padrão do aplicativo (claro).
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case warningDark
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case dangerLight
        
        /// Cor padrão do aplicativo (claro).
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case danger
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case dangerDark
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case whiteSnow
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case white
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case whiteMedium
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case black
        
        case primaryUltraDark
        
        // MARK: ATENÇÃO: NOMES DE CORES FINAL TEXT DEVEM SER USADOS EXCLUSIVAMENTE PARA CORES NOS TEXTOS
        ///  - Hexadecimal: #244269
        ///  - RGB: red: 36/255, green: 66/255, blue: 105/255
        case primaryClearText
        
        ///  - Hexadecimal: #3A577D
        ///  - RGB: red: 58/255, green: 87/255, blue: 125/255
        case primaryUltraLightText
        
        ///  - Hexadecimal: #3A577D
        ///  - RGB: red: 58/255, green: 87/255, blue: 125/255
        case primaryLightText
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case primaryText
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case primaryDarkText
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case grayscaleUltraLightText
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case grayscaleLightText
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case grayscaleText
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case grayscaleDarkText
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case grayscaleUltraDarkText
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case successLightText
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case successText
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case successDarkText
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case warningLightText
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case warningText
        
        /// Cor padrão do aplicativo (claro).
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case warningDarkText
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case dangerLightText
        
        /// Cor padrão do aplicativo (claro).
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case dangerText
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case dangerDarkText
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case whiteSnowText
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case whiteText
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case whiteMediumText
        
        ///  - Hexadecimal: #023047
        ///  - RGB: red: 2/255, green: 48/255, blue: 71/255
        case blackText
        
        case primaryUltraDarkText
        
        case facebook
        
        case google
        
        var rawValue:Color {
            
            switch self {
                
            case .primaryClear:            return Color("primary_clear")
                
            case .primaryUltraLight:       return Color("primary_ultra_light")
                
            case .primaryLight:            return Color("primary_light")
                
            case .primary:                 return Color("primary")
                
            case .primaryDark:             return Color("primary_dark")
                
            case .primaryUltraDark:        return Color("primary_ultra_dark")
                
            case .grayscaleUltraLight:     return Color("grayscale_ultra_light")
                
            case .grayscaleLight:          return Color("grayscale_light")
                
            case .grayscale:               return Color("grayscale")
                
            case .grayscaleDark:           return Color("grayscale_dark")
                
            case .grayscaleUltraDark:      return Color("grayscale_ultra_dark")
                
            case .successLight:            return Color("success_light")
                
            case .success:                 return Color("success")
                
            case .successDark:             return Color("success_dark")
                
            case .warningLight:            return Color("warning_light")
                
            case .warning:                 return Color("warning")
                
            case .warningDark:             return Color("warning_dark")
                
            case .dangerLight:             return Color("danger_light")
                
            case .danger:                  return Color("danger")
                
            case .dangerDark:              return Color("danger_dark")
                
            case .whiteSnow:               return Color("white_snow")
                
            case .white:                   return Color("white")
                
            case .whiteMedium:             return Color("white_medium")
                
            case .black:                   return Color("black")
                
            case .primaryClearText:        return Color("primary_clear")
                
            case .primaryUltraLightText:   return Color("primary_ultra_light")
                
            case .primaryLightText:        return Color("primary_light")
                
            case .primaryText:             return Color("primary")
                
            case .primaryDarkText:         return Color("primary_dark")
                
            case .primaryUltraDarkText:    return Color("primary_ultra_dark")
                
            case .grayscaleUltraLightText: return Color("grayscale_ultra_light")
                
            case .grayscaleLightText:      return Color("grayscale_light")
                
            case .grayscaleText:           return Color("grayscale")
                
            case .grayscaleDarkText:       return Color("grayscale_dark")
                
            case .grayscaleUltraDarkText:  return Color("grayscale_ultra_dark")
                
            case .successLightText:        return Color("success_light")
                
            case .successText:             return Color("success")
                
            case .successDarkText:         return Color("success_dark")
                
            case .warningLightText:        return Color("warning_light")
                
            case .warningText:             return Color("warning")
                
            case .warningDarkText:         return Color("warning_dark")
                
            case .dangerLightText:         return Color("danger_light")
                
            case .dangerText:              return Color("danger")
                
            case .dangerDarkText:          return Color("danger_dark")
                
            case .whiteSnowText:           return Color("white_snow")
                
            case .whiteText:               return Color("white")
                
            case .whiteMediumText:         return Color("white_medium")
                
            case .blackText:               return Color("black")
                
            case .facebook:                return Color("facebook")
                 
            case .google:                return Color("google")
            }
        }
    }
}

public extension Color {
    
    static func customWithoutTheTheme(_ color: OutherColors) -> Color { color.rawValue }
    
    enum OutherColors {
        case red
        case yellow
        
        var rawValue: Color {
            switch self {
            case .yellow:
                return Color(red: 250/255, green: 212/255, blue: 101/255)
            case .red:
                return Color(red: 245/255, green: 108/255, blue: 98/255)
            }
        }
    }

}



