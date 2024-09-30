//
//  DSMWrapperScreen.swift
//  SharedUI
//
//  Created by vagner reis on 30/09/24.
//

import SwiftUI

public struct DSMWrapperScreen<Content: View>: View {
    
    @ViewBuilder var content: (GeometryProxy, Bool) -> Content
    
    @Environment(\.colorScheme) private var colorScheme
    
    @Environment(\.horizontalSizeClass) private var hClass
    
    @Environment(\.deviceType) private var deviceType
    
    public init(content: @escaping (GeometryProxy, Bool) -> Content) {
        self.content = content
    }
    
    public var body: some View {
        GeometryReader { geometry in
            let isLandscape = (geometry.size.width > geometry.size.height && hClass == .regular) && deviceType == .ipad
            ZStack {
                
                if colorScheme == .dark {
                    DSMShadowEffectBackgroundView(size: geometry.size)
                }
                content(geometry, isLandscape)
            }
            .background(Color.custom(colorScheme == .dark ? .primaryUltraDark : .white))
            
        }
    }
}

#Preview {
    DSMWrapperScreen { geometry, isLandscape in VStack {
        Spacer()
        HStack {
            Spacer()
            Text("WrapperScreen")
            Spacer()
        }
        Spacer()
    } }
    .preferredColorScheme(.dark)
}
