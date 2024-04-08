//
//  UserStatView.swift
//  Instagram
//
//  Created by Felipe Assis on 08/04/24.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack {
            Text(String(value))
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(title)
                .font(.footnote)
        }
        .padding(.horizontal, 8)
    }
}

