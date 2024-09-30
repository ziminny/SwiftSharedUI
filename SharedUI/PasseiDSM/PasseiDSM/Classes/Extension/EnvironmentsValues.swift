//
//  EnvironmentsValues.swift
//  SharedUI
//
//  Created by vagner reis on 26/09/24.
//

import Foundation
import SwiftUI

private struct SizeManagerKey: @preconcurrency EnvironmentKey {
    typealias Value = SMDeviceType
    
    @MainActor static let defaultValue: Value = SMPasseiGeometry.deviceType
}

public extension EnvironmentValues {
    var deviceType: SMDeviceType {
        get { self[SizeManagerKey.self] }
        set { self[SizeManagerKey.self] = newValue }
    }
}
