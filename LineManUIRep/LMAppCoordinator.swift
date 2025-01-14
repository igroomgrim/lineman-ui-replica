//
//  LMAppCoordinator.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 14/1/2568 BE.
//
import Foundation

class LMAppCoordinator: ObservableObject {
    @Published var selectedTab: LMScreenType = .home

    // Coordinators
    var homeCoordinator = LMHomeCoordinator()
    var ordersCoordinator = LMOrdersCoordinator()
    var inboxCoordinator = LMInboxCoordinator()
    var moreCoordinator = LMMoreCoordinator()
}
