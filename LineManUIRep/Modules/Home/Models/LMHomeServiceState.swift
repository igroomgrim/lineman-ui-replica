//
//  LMHomeServiceState.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 13/1/2568 BE.
//
import SwiftUI

enum LMHomeServiceState {
    case basic
    case withDelivery
}

class LMHomeServiceCurrentState: ObservableObject {
    @Published var serviceState: LMHomeServiceState = .basic
}
