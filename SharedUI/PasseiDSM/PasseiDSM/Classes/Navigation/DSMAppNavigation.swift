//
//  DSMAppNavigation.swift
//  PasseiOAB
//
//  Created by vagner reis on 24/09/24.
//

import Foundation
import SwiftUI
import Combine

public enum TabNavigationPaths {}

@MainActor
public class DSMAppNavigation<Paths: DSMPathRepresentableMode, WorkClass>: ObservableObject {
    @Published public var paths: [Paths] = []
    
    // Aqui o uso do @inlinable eu deixei pois isso vai ser passado para um modulo futuramente
    @inlinable public func backToHome() { paths = [] }
    
    @inlinable public func goToNext(_ page: Paths) {
        if !paths.contains(page) {
            paths.append(page)
        }
        
    }
    
    @inlinable public func goToNextAndRemoveTail(_ page: Paths) { paths = [page] }
    
    @inlinable public func goToBack() {
        if paths.count > 0 {
            paths.removeLast()
        }
    }
    
    @inlinable public func backTo(_ page: Paths) {
        if let index = paths.firstIndex(of: page) {
            paths.removeSubrange((index + 1)...)
        }
    }
    
}

public extension DSMAppNavigation where WorkClass == TabNavigationPaths, Paths == DSMPath.None {
    
    var tab: TabNavigationViewModel {
        get {
            return TabNavigationViewModel()
        } set {}
    }
    
    @MainActor
    class TabNavigationViewModel: ObservableObject {
       
        @Published public var profilePaths: [DSMPath.ProfilePaths] = []
        
        @Published public var selectedPath: DSMPath.TabBarIndex = .home
        
        @Published public var tabbarVisibility: Visibility = .visible
        
        private var cancellables = Set<AnyCancellable>()
        
        fileprivate init() {
            NotificationCenter.default
                .publisher(for: .toggleTabBar)
                .receive(on: RunLoop.main)
                .map(\.object)
                .map { $0 as? Visibility }
                .replaceNil(with: .visible)
                .assign(to: &$tabbarVisibility)
        }
        
        // Não quero que o compilador decida por isso inline(__always)
        @inline(__always) public func navigate(to tab: DSMPath.TabBarIndex) {
            selectedPath = tab
        }
        
    }
    
}



