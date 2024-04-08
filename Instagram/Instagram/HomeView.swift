//
//  ContentView.swift
//  Instagram
//
//  Created by Felipe Assis on 02/04/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Button("Navigate to profile") {
                let  profile = ProfileData(name: "Mufasinha")
                coordinator.push(route: .profile)
            }
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
