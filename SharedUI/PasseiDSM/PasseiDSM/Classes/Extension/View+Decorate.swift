//
//  View.swift
//  SharedUI
//
//  Created by vagner reis on 27/09/24.
//

import Foundation
import SwiftUI

internal extension View {
    func buttonDecorate(with decorator: (some ButtonDecoratorProtocol)?) -> some View {
        return decorator?.apply(to: self)
    }
}
