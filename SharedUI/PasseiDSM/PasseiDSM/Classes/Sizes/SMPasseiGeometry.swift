//
//  SMPasseiGeometry.swift
//  
//
//  Created by Vagner Oliveira on 15/06/23.
//

import Foundation
import UIKit

/// Implementação da geometria específica para o aplicativo SMPasseiOAB.
internal struct SMPasseiGeometry: SMGeometryProvider {
    
    /// Retorna o tipo de dispositivo com base na altura da tela e na interface do usuário.
    public static var deviceType: SMDeviceType {
        
        let height = UIScreen.main.bounds.height
        let device = UIDevice.current.userInterfaceIdiom
        
        switch device {
        case .pad:
            return .ipad
        default:
            switch height {
            case 0...sizes.cellPhoneMaxLimit:
                return .small
            default:
                return .normal
            }
        }
        
    }
    
    /// Retorna o preenchimento horizontal com base no tipo de dispositivo.
    public static var horizontalPadding: CGFloat {
        deviceType == .ipad ? ((UIScreen.main.bounds.size.width / 0.8) / sizes.sideSpacingRatio) :
        UIScreen.main.bounds.size.width / sizes.sideSpacingRatio
    }
    
    /// Retorna a altura padrão dos botões com base no tipo de dispositivo.
    public static var buttonhHeight: CGFloat {
        (
            deviceType == .small ? 40 :
            deviceType == .normal  ? 45.0 : 60
        ) * sizes.buttonHeigthRatio
    }
    
    /// Retorna o preenchimento vertical com base no tipo de dispositivo.
    public static var verticalPadding: CGFloat {
        deviceType == .ipad ? ((UIScreen.main.bounds.size.height / 0.9) / sizes.heightSpaceRatio) :
        UIScreen.main.bounds.size.height / sizes.heightSpaceRatio
    }
    
    /// Retorna o raio de curvatura padrão dos botões.
    public static var buttonCornerRadius: CGFloat {
        8.0 * sizes.buttonCurveProportion
    }
    
    private static let sizes = SMPasseiGlobal()
    
    private init() { }
}

