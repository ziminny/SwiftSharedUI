//
//  DSMShadowEffectBackgroundView.swift
//  SharedUI
//
//  Created by vagner reis on 30/09/24.
//

import Foundation
import SwiftUI

public struct DSMShadowEffectBackgroundView: View {
    
    private let size: CGSize
    @Environment(\.colorScheme) var colorScheme
    private let color = Color(red: 9 / 255, green: 67 / 255, blue: 96 / 255)
    
    public init(size: CGSize) {
        self.size = size
    }
    
    public var body: some View {
        VStack {
            Circle()
                .fill(color.opacity(0.2))
                .blur(radius: 200)
                .offset(x:-(size.height / 9), y: -100)
            
            Spacer()
            Circle()
            
                .fill(color.opacity(0.3))
                .frame(width:300)
                .blur(radius: 140)
                .offset(x:size.height / 9, y: 100)
            // 9 67 96
        }
        
    }
}

#Preview {
    DSMShadowEffectBackgroundView(size: CGSize(width: 100, height: 100))
        .preferredColorScheme(.dark)
}
