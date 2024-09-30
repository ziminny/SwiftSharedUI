//
//  DSMButton.swift
//  SharedUI
//
//  Created by vagner reis on 26/09/24.
//

import SwiftUI

internal struct DSMButton<Decorator: ButtonDecoratorProtocol, Title: DSMTitleProtocol, BackgroundDesign: DSMConformableButtonBackground>: View {
    
    @State private var decorator: Decorator?
    private let title: Title
    
    @Environment(\.colorScheme) private var colorScheme
    
    internal init(properties: DSMButtonProperties<Decorator.BackgroundDesign>) {
        _decorator = State(initialValue: Decorator(properties: properties))
        self.title = Title(title: properties.title)
    }
    
    var body: some View {
        DSMUIContainer { geometry, isLandscape in
            return decorator?
                .fabricate(with: title)
                .onAppear {
                    decorator?
                        .update(
                            geometry: geometry,
                            isLandscape: isLandscape,
                            colorScheme: colorScheme
                        )
                }
                .onChange(of: colorScheme, perform: { newValue in
                    decorator?
                        .update(
                            geometry: geometry,
                            isLandscape: isLandscape,
                            colorScheme: newValue
                        )
                })
        }
        .buttonDecorate(with: decorator)
    }
    
}

