//
//  CoordinatorView.swift
//  Instagram
//
//  Created by Felipe Assis on 05/04/24.
//

import SwiftUI

struct CoordinatorView: View {
    @StateObject private var coordinator = Coordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.build(route: .home)
                .navigationDestination(for: Route.self) { route in
                    coordinator.build(route: route)
                }
        }
        .environmentObject(coordinator)
    }
}

#Preview {
    CoordinatorView()
}
