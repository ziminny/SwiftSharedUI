//
//  DSMPath.swift
//  PasseiDSM
//
//  Created by vagner reis on 24/09/24.
//

import Foundation
import SwiftUI

public struct DSMPath { }

public extension DSMPath {
    enum None: String, CaseIterable {
        case none = "none"
    }
}

public extension DSMPath {
    enum EbookPaths: String, CaseIterable {
        case eBookScreen = "eBookScreen"
    }
}

public extension DSMPath {
    enum JourneyPaths: String, CaseIterable {
        case scheduleWelcome = "scheduleWelcome"
        case journey = "journey"
    }
}

public extension DSMPath {
    enum SchedulePaths: String, CaseIterable {
        case scheduleWelcomeScreen = "scheduleWelcomeScreen"
        case testAppointmentDate = "testAppointmentDate"
        case mattersOfInterest = "mattersOfInterest"
        case freeDaysOfTheWeek = "freeDaysOfTheWeek"
        case finishedSchedule = "finishedSchedule"
    }
}

public extension DSMPath {
    enum QuestionPaths: String, CaseIterable {
        case questionScreen = "questionScreen"
        case completeTest = "completeTest"
        case questionByMatter = "questionByMatter"
        case currentSubmatter = "currentSubmatteratter"
        case testScreen = "testScreen"
        case challengeScreen = "challengeScreen"
    }
}

public extension DSMPath {
    
    @MainActor
    enum TabBarIndex: String, Equatable, CaseIterable {
        case journey
        case ebook
        case home
        case question
        case account
        
        @MainActor
        struct TabBarProps {
            let title: String
            let icon: String
            let view: AnyView
            let tag: TabBarIndex
        }
    }
    
}

public extension DSMPath {
    enum ProfilePaths: String {
        case userFirstVisitGretingHomeScreen = "userFirstVisitGretingHomeScreen"
    }
}

public extension DSMPath {
    enum Unauthenticated: String, Equatable, CaseIterable  {
        case login = "login"
    }
}

