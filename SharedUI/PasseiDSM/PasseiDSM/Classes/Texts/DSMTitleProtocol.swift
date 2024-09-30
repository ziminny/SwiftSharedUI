//
//  DSMTitleProtocol.swift
//  SharedUI
//
//  Created by vagner reis on 27/09/24.
//

import Foundation
import SwiftUI

protocol DSMTitleProtocol {
    associatedtype SomeView: View
    
    @MainActor
    func show() -> SomeView
    @MainActor
    var font: Font { get }
    
    init(title: DSMPredefinedTitle)
}
