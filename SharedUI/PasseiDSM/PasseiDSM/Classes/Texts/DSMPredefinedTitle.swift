//
//  DSMPredefinedTitle.swift
//  SharedUI
//
//  Created by vagner reis on 27/09/24.
//

import Foundation

public enum DSMPredefinedTitle {
    
    case next
    case back
    case finish
    case apple
    case google
    case meta
    case custom(String)
    
    var rawValue: String {
        switch self {
        case .next:
            return "Próximo"
        case .back:
            return "Voltar"
        case .finish:
            return "Concluir"
        case .custom(let string):
            return string
        case .apple:
            return "Continuar com a Apple"
        case .google:
            return "Continuar com o Google"
        case .meta:
            return "Continuar com o Facebook"
        }
    }
}
