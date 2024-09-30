//
//  DSMDefaultButtonDecorator.swift
//  SharedUI
//
//  Created by vagner reis on 26/09/24.
//

import Foundation
import SwiftUI

internal struct DSMDefaultButtonDecorator<BackgroundDesign: DSMConformableButtonBackground>: ButtonDecoratorProtocol {
    
    internal let properties: DSMButtonProperties<BackgroundDesign>

    private var geometry: GeometryProxy?
    private var isLandscape: Bool = false
    private var colorScheme: ColorScheme? = .dark
    private var imageNmae: String? = nil
    
    private var background: BackgroundDesign = {
        
        var resolved = BackgroundDesign.self
        
        if resolved is LinearGradient.Type {
            return LinearGradient(colors: [ .clear ], startPoint: .top, endPoint: .bottom) as! BackgroundDesign
        }
        if resolved is Color.Type {
            return Color.clear as! BackgroundDesign
        }
        
        fatalError("Valores validos: LinearGradient ou Color")
    }()
    
    private var foreground: Color = .clear

    
    internal init(properties: DSMButtonProperties<BackgroundDesign>) {
        self.properties = properties
    }
    
    internal func fabricate(with title: any DSMTitleProtocol) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: .buttonCornerRadius)
                .foregroundStyle(background)
                
            HStack {
                if let imageNmae {
                    let size: CGFloat = SMPasseiGeometry.deviceType == .ipad ? 25 : 20
                  
                    Image(imageNmae)
                        .resizable()
                        .scaledToFit()
                        .frame(width: size)
                        .padding(.leading, 16)
                   
                }
                AnyView(title.show())
            }
        }
        .onTapGesture {
            properties.onPressed()
        }
       
    }
    
    
    internal func apply(to button: any View) -> some View {
        AnyView(button)
            .frame(height: .buttonhHeight)
            .foregroundStyle(foreground)
            //.background(.clear)
            .clipShape(RoundedRectangle(
                cornerRadius: .buttonCornerRadius)
            )
            .shadow(color: colorScheme == .dark ? .white.opacity(0.05) : .black.opacity(0.3), radius: 5, x: 1, y: 5)
    }
    
    internal mutating func update(
        geometry: GeometryProxy,
        isLandscape: Bool,
        colorScheme: ColorScheme) {
        self.geometry = geometry
        self.isLandscape = isLandscape
        self.colorScheme = colorScheme
        background = properties.background(colorScheme: colorScheme)
        foreground = properties.foreground(colorScheme: colorScheme)
        imageNmae = properties.imageName(colorScheme: colorScheme)
    }

}

