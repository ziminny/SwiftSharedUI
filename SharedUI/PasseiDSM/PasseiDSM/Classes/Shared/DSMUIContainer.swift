//
//  DSMUIContainer.swift
//  SharedUI
//
//  Created by vagner reis on 26/09/24.
//

import SwiftUI

public struct DSMUIContainer<Content: View>: View {
    
    @ViewBuilder var content: (GeometryProxy, Bool) -> Content
    
    @Environment(\.colorScheme) private var colorScheme
    
    @Environment(\.horizontalSizeClass) private var hClass
    
    @Environment(\.deviceType) private var deviceType
    
    public init(content: @escaping (GeometryProxy, Bool) -> Content) {
        self.content = content
    }
    
    public var body: some View {
        GeometryReader {
            let isLandscape = ($0.size.width > $0.size.height && hClass == .regular) && deviceType == .ipad
             content($0, isLandscape)
        }
    }
}

#Preview {
    DSMUIContainer { geometry, isLandscape in VStack {
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
