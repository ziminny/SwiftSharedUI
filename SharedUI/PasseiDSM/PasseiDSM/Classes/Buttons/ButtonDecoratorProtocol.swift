//
//  ButtonDecoratorProtocol.swift
//  SharedUI
//
//  Created by vagner reis on 27/09/24.
//

import Foundation
import SwiftUI

internal protocol DSMOnClickListner {
    func onClick()
}

internal protocol ButtonDecoratorProtocol {
    associatedtype FabricateReturn: View
    associatedtype ApplyReturn: View
    associatedtype BackgroundDesign: DSMConformableButtonBackground
    
    var properties: DSMButtonProperties<BackgroundDesign> { get }
    
    @MainActor
    func fabricate(with title: any DSMTitleProtocol) -> FabricateReturn
    @MainActor
    func apply(to button: any View) -> ApplyReturn
    @MainActor
    mutating func update(geometry: GeometryProxy, isLandscape: Bool, colorScheme: ColorScheme)
    
    init(properties: DSMButtonProperties<BackgroundDesign>)
}
