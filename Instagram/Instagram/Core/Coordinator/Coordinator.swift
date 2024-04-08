//
//  Coordinator.swift
//  Instagram
//
//  Created by Felipe Assis on 05/04/24.
//

import SwiftUI

enum Route: Hashable, Equatable {
    case home
    case profile
   // case profile(profile: ProfileData)
}

enum Modal: Hashable, Equatable {
    case modal
}

enum FullModal: Hashable, Equatable {
    case fullModal
}

class Coordinator: ObservableObject {
    @Published var path = NavigationPath()
    @Published var modal: Modal?
    @Published var fullModal: FullModal?
    
    //MARK: Navigate to route
    func push(route: Route) {
        path.append(route)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    //MARK: Navigate to modal
    func present(modal: Modal) {
        self.modal = modal
    }
    
    func dismissModal() {
        self.modal = nil
    }
    
    //MARK: Navigate to full modal
    func present(fullModal: FullModal) {
        self.fullModal = fullModal
    }
    
    func dismissFullModal() {
        self.fullModal = nil
    }
    
    //MARK: Builders
    @ViewBuilder
    func build(route: Route) -> some View {
        switch route {
        case .home:
            HomeView()
        case .profile:
            ProfileView()
//        case .profile(let profile):
//            ProfileView(profile: profile)
        }
    }
    
    @ViewBuilder
    func build(modal: Modal) -> some View {
        switch modal {
        case .modal:
            NavigationStack {
               // ModalView()
            }
        }
    }
    
    @ViewBuilder
    func build(fullModal: FullModal) -> some View {
        switch fullModal {
        case .fullModal:
            NavigationStack {

            }
        }
    }
}
