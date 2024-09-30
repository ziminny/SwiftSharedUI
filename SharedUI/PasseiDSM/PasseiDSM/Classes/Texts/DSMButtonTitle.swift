//
//  DSMButtonTitle.swift
//  SharedUI
//
//  Created by vagner reis on 27/09/24.
//

import SwiftUI

internal struct DSMButtonTitle: DSMTitleProtocol {
    
    private let title: DSMPredefinedTitle
    var font: Font {
        SMPasseiGeometry.deviceType == .ipad ? .title2 : .headline
    }
    
    init(title: DSMPredefinedTitle) {
        self.title = title
    }
    
    func show() -> some View {
        Text(title.rawValue)
            .font(font)
            .fontWeight(.medium)
    }
}

