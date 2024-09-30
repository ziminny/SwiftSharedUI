//
//  DSMDefaultButton.swift
//  SharedUI
//
//  Created by vagner reis on 27/09/24.
//

import SwiftUI

public struct DSMDefaultButton<BackgroundDesign>: View where BackgroundDesign: DSMConformableButtonBackground {
    
    private let properties: DSMButtonProperties<BackgroundDesign>
    
    public init(properties: DSMButtonProperties<BackgroundDesign>) {
        self.properties = properties
    }
    
    public var body: some View {
        DSMButton<DSMDefaultButtonDecorator<BackgroundDesign>, DSMButtonTitle, Color>(
            properties: properties
        )
       
    }
}

let primaryGradient = LinearGradient(colors: [ Color.custom(.primary),Color.custom(.primaryDark) ], startPoint: .top, endPoint: .bottom)

let sucessGradient = LinearGradient(colors: [ Color.custom(.success),Color.custom(.successDark) ], startPoint: .top, endPoint: .bottom)

#Preview {
    VStack(spacing: 8) {
        DSMDefaultButton(properties: DSMButtonProperties(
            title: .apple,
            backgroundLight: .black,
            backgroundNight: .white,
            foregroundLight: .white,
            foregroundNight: .black,
            imageLightName: "ic_apple",
            imageDarkName: "ic_apple",
            onPressed: {
            }))
        .buttonLoading(
            isLoading: .constant(true),
            loadingTint: DSMLoadingTint(dark: .black, light: .white)
        )
        .addAnimation(animationType: .bouce())
        
        DSMDefaultButton(properties: DSMButtonProperties(
            title: .google,
            backgroundLight: .white,
            backgroundNight: Color.custom(.google),
            foregroundLight: .black,
            foregroundNight: .white,
            imageLightName: "ic_google",
            imageDarkName: "ic_google",
            onPressed: {
            }))
        .buttonLoading(
            isLoading: .constant(true),
            loadingTint: DSMLoadingTint(dark: .white, light: .black)
        )
        .addAnimation(animationType: .fade())
        
        DSMDefaultButton(properties: DSMButtonProperties(
            title: .meta,
            backgroundLight: Color.custom(.facebook),
            backgroundNight: Color.custom(.facebook),
            foregroundLight: .white,
            foregroundNight: .white,
            imageLightName: "ic_facebook",
            imageDarkName: "ic_facebook",
            onPressed: {
            }))
        .buttonLoading(
            isLoading: .constant(true),
            loadingTint: DSMLoadingTint(dark: .black, light: .white)
        )
        .addAnimation(animationType: .pulse())
        
        DSMDefaultButton(properties: DSMButtonProperties(
            title: .next,
            backgroundLight: .black,
            backgroundNight: .white,
            foregroundLight: .white,
            foregroundNight: .black,
            onPressed: {
                print("pressed")
            }))
        .buttonLoading(
            isLoading: .constant(true),
            loadingTint: DSMLoadingTint(dark: .black, light: .white)
        )
        .addAnimation(animationType: .shake())
      
    }
    .padding()
 
}
