//
//  View+Animations.swift
//  SharedUI
//
//  Created by vagner reis on 29/09/24.
//

import Foundation
import SwiftUI

fileprivate struct ButtonAnimationPulseModifier: ViewModifier {
    @State private var isPressed: Bool = false
    
    private let animate: Bool
    
    init(animate: Bool) {
        self.animate = animate
    }
    
    func body(content: Content) -> some View {
        content
            .scaleEffect((isPressed && animate) ? 0.95 : 1.0) // Animação de escala
            .animation(.spring(response: 0.4, dampingFraction: 0.6), value: isPressed)
            .gesture(
                DragGesture(minimumDistance: 0)
                    .onChanged { _ in
                        isPressed = true
                    }
                    .onEnded { _ in
                        isPressed = false
                    }
            )
    }
}

fileprivate struct ButtonAnimationFadeModifier: ViewModifier {
    @State private var isPressed: Bool = false
    
    private let animate: Bool
    
    init(animate: Bool) {
        self.animate = animate
    }
    
    func body(content: Content) -> some View {
        content
            .opacity((isPressed && animate) ? 0.5 : 1.0) // Alteração de opacidade
            .animation(.easeInOut(duration: 0.3), value: isPressed)
            .gesture(
                DragGesture(minimumDistance: 0)
                    .onChanged { _ in
                        isPressed = true
                    }
                    .onEnded { _ in
                        isPressed = false
                    }
            )
    }
}

fileprivate struct ButtonAnimationShakeModifier: ViewModifier {
    @State private var shakeOffset: CGFloat = 0
    
    private let animate: Bool
    
    init(animate: Bool) {
        self.animate = animate
    }
    
    func body(content: Content) -> some View {
        content
            .offset(x: shakeOffset) // Deslocamento horizontal para "tremer"
            .animation(Animation.linear(duration: 0.1).repeatCount(3, autoreverses: true), value: shakeOffset)
            .gesture(
                DragGesture(minimumDistance: 0)
                    .onChanged { _ in
                        shakeButton() // Inicia a animação de shake
                    }
                    .onEnded { _ in
                        shakeOffset = 0
                    }
            )
    }
    
    private func shakeButton() {
        if animate {
            withAnimation {
                shakeOffset = -10
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    shakeOffset = 10
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    shakeOffset = -10
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    shakeOffset = 0
                }
            }
        }
    }
}

fileprivate struct ButtonAnimationBounceModifier: ViewModifier {
    @State private var isPressed: Bool = false
    
    private let animate: Bool
    
    init(animate: Bool) {
        self.animate = animate
    }
    
    func body(content: Content) -> some View {
        content
            .offset(y: (isPressed && animate) ? -10 : 0) // Deslocamento vertical para simular o pulo
            .animation(.interpolatingSpring(stiffness: 150, damping: 5), value: isPressed)
            .gesture(
                DragGesture(minimumDistance: 0)
                    .onChanged { _ in
                        isPressed = true
                    }
                    .onEnded { _ in
                        isPressed = false
                    }
            )
    }
}

public extension View {
    // Função para adicionar a animação condicionalmente
    func addAnimation(animationType: AnimationType = .pulse()) -> some View {
        return self.modifier(animationType.type)
    }
}

public struct AnyViewModifier: ViewModifier {
    private let bodyModifier: (Content) -> AnyView
    
    fileprivate init<M: ViewModifier>(_ modifier: M) {
        self.bodyModifier = { content in AnyView(content.modifier(modifier)) }
    }
    
    public func body(content: Content) -> some View {
        bodyModifier(content)
    }
}

public enum AnimationType {
    case pulse(Bool = true)
    case fade(Bool = true)
    case shake(Bool = true)
    case bouce(Bool = true)
    
    public var type: AnyViewModifier {
        switch self {
        case .pulse(let animate):
            return AnyViewModifier(ButtonAnimationPulseModifier(animate: animate))
        case .fade(let animate):
            return AnyViewModifier(ButtonAnimationFadeModifier(animate: animate))
        case .shake(let animate):
            return AnyViewModifier(ButtonAnimationShakeModifier(animate: animate))
        case .bouce(let animate):
            return AnyViewModifier(ButtonAnimationBounceModifier(animate: animate))
        }
    }
    
}
