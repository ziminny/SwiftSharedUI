//
//  View+Loading.swift
//  SharedUI
//
//  Created by vagner reis on 29/09/24.
//

import Foundation
import SwiftUI

public struct DSMLoadingTint {
    private(set) var dark: Color
    private(set) var light: Color
    
    public init(dark: Color, light: Color) {
        self.dark = dark
        self.light = light
    }
}

fileprivate struct ButtonLoading: ViewModifier {
    @Binding private var isLoading: Bool
    private let loadingTint: DSMLoadingTint
    
    @Environment(\.colorScheme) var colorScheme
    
    init(isLoading: Binding<Bool>, loadingTint: DSMLoadingTint) {
        self._isLoading = isLoading
        self.loadingTint = loadingTint
    }
    
    func body(content: Content) -> some View {
        ZStack(alignment: .trailing) {
            content
            if isLoading {
                ProgressView()
                    .padding(.trailing)
                    .tint(colorScheme == .dark ? loadingTint.dark : loadingTint.light)
            }
        }
        
    }
}

public extension View {
    func buttonLoading(
        isLoading: Binding<Bool> = .constant(false),
        loadingTint: DSMLoadingTint = DSMLoadingTint(dark: .black, light: .white)
    ) -> some View {
        return modifier(ButtonLoading(isLoading: isLoading, loadingTint: loadingTint))
    }
}
