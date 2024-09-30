//
//  ShapeStyle+Conformable.swift
//  SharedUI
//
//  Created by vagner reis on 29/09/24.
//

import Foundation
import SwiftUI

public protocol DSMConformableButtonBackground where Self: ShapeStyle {}
extension Color: DSMConformableButtonBackground {}
extension LinearGradient: DSMConformableButtonBackground {}
