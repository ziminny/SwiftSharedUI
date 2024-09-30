//
//  SMPasseiGlobal.swift
//  
//
//  Created by Vagner Oliveira on 15/06/23.
//

import Foundation
import UIKit

extension SMPasseiGeometry {
    
    internal struct SMPasseiGlobal {
        
        /// Default =  35
        ///
        /// - Exemplo:
        /// ```
        ///     sideSpacingRatio:Double = 35
        /// ```
        @MainActor internal let sideSpacingRatio: Double = 30
        
        /// Default =  35
        ///
        /// - Exemplo:
        /// ```
        ///     heightSpaceRatio = 35
        /// ```
        @MainActor internal let heightSpaceRatio: Double = 15
        
        /// Default = 1
        ///
        /// - Exemplo:
        /// ```
        ///     buttonHeigthRatio:Double = 1
        /// ```
        @MainActor internal let buttonHeigthRatio: Double = 0.9
        
        
        /// Default = 1
        ///
        /// - Exemplo:
        /// ```
        ///     buttonCurveProportion:Double = 1
        /// ```
        @MainActor internal let buttonCurveProportion: Double = 1
        
        /// Default = 1
        ///
        /// - Exemplo:
        /// ```
        ///     cellPhoneMaxLimit:Double = 737
        /// ```
        @MainActor internal let cellPhoneMaxLimit: Double = 737
        
        
    }
    
}

 

 
