//
//  LMScreenType.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 1/1/2568 BE.
//

enum LMScreenType: Int {
    case home
    case orders
    case inbox
    case more
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .orders:
            return "Orders"
        case .inbox:
            return "Inbox"
        case .more:
            return "More"
        }
    }
    
    var iconName: String {
        switch self {
        case .home:
            return "house"
        case .orders:
            return "clock"
        case .inbox:
            return "envelope"
        case .more:
            return "ellipsis"
        }
    }
}
