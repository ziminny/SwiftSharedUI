//
//  SMGeometryProvider.swift
//
//
//  Created by Vagner Oliveira on 15/06/23.
//

import Foundation

/// Enumeração que representa os diferentes tipos de dispositivos.
public enum SMDeviceType {
    case small
    case normal
    case ipad
}

/// Protocolo que fornece informações geométricas com base no tipo de dispositivo.
@MainActor
internal protocol SMGeometryProvider {
    
    /// O preenchimento horizontal padrão.
    static var horizontalPadding: CGFloat { get }
    
    /// A altura padrão dos botões.
    static var buttonhHeight: CGFloat { get }
    
    /// O raio de curvatura padrão dos botões.
    static var buttonCornerRadius: CGFloat { get }
    
    /// O tipo de dispositivo atual.
    static var deviceType: SMDeviceType { get }
    
    static var verticalPadding: CGFloat { get }
    
}

