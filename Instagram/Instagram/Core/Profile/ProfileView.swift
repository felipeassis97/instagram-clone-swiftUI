//
//  ProfileView.swift
//  Instagram
//
//  Created by Felipe Assis on 03/04/24.
//

import SwiftUI

struct ProfileView: View {
   // let profile: ProfileData
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        HStack {
                            Image(.profilePhoto)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            
                            Spacer()
                            
                            UserStatView(value: 3, 
                                         title: "posts")
                            
                            UserStatView(value: 100, 
                                         title: "followers")
                            
                            UserStatView(value: 90,
                                         title: "following")
                            .padding(.bottom, 4)
                            
                            Spacer()
                        }
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Mufasinha")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Porto Alegre - RS")
                                .font(.footnote)
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Edit Profile")
                                .font(.subheadline)
                                .foregroundStyle(.customPrimary)
                                .fontWeight(.semibold)
                                .frame(width: 360, height: 32)
                                .overlay(RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray, lineWidth: 1))
                        })
                        Divider()
                    }
                    .padding(.horizontal, 24)

                    LazyVGrid(columns: gridItems, spacing: 1){
                        ForEach(0 ... 15, id: \.self) { index in
                            Image(.mufasa2)
                                .resizable()
                                .scaledToFill()
                        }
                 
                        
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "line.3.horizontal")
                    })
                }
            })
        }
    }
}

#Preview {
    ProfileView()

}
