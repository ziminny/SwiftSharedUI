//
//  DSMAppNavigationProtocol.swift
//  PasseiDSM
//
//  Created by vagner reis on 24/09/24.
//

import Foundation

/// Um typealias que combina múltiplos protocolos.
/// `PathRepresentableMode` é usado para definir tipos que conformam aos protocolos `CaseIterable`, `RawRepresentable`, `Equatable` e `Hashable`.
///
/// Qualquer tipo que conforma a este alias pode ser iterado, comparado, representado como um valor bruto e também armazenado em estruturas como `Set` ou usado como chave de um `Dictionary`.
public typealias DSMPathRepresentableMode = CaseIterable & RawRepresentable & Hashable

/// Um protocolo que define as operações essenciais de navegação.
/// `AppNavigationProtocol` fornece os métodos fundamentais para controlar a navegação, permitindo a manipulação de uma pilha de navegação com várias páginas.
public protocol DSMAppNavigationProtocol where Self: ObservableObject {
    
    /// O tipo associado que deve conformar a `PathRepresentableMode`.
    associatedtype Paths = DSMPathRepresentableMode
    
    /// Retorna à tela inicial, limpando a pilha de navegação.
    ///
    /// Este método é responsável por redefinir a pilha de navegação, removendo todas as páginas e voltando à página inicial (home).
    @MainActor func backToHome()
    
    /// Adiciona uma nova página à pilha de navegação.
    ///
    /// - Parameter page: A página do tipo `Paths` que será adicionada ao final da pilha de navegação.
    @MainActor func goToNext(_ page: Paths)
    
    /// Remove todas as páginas da pilha de navegação e navega para uma nova página.
    ///
    /// - Parameter page: A página do tipo `Paths` para a qual deseja navegar. Esse método redefine a pilha de navegação e vai diretamente para a página fornecida.
    @MainActor func goToNextAndRemoveTail(_ page: Paths)
    
    /// Volta para a página anterior na pilha de navegação.
    ///
    /// Este método remove a última página da pilha de navegação, voltando para a página anterior.
    @MainActor func goToBack()
    
    /// Volta para uma página específica na pilha de navegação.
    ///
    /// - Parameter page: A página do tipo `Paths` para a qual deseja voltar. Todas as páginas após a página especificada serão removidas da pilha.
    @MainActor func backTo(_ page: Paths)
}

