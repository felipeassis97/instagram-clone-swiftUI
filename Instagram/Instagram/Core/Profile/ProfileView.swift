//
//  ProfileView.swift
//  Instagram
//
//  Created by Felipe Assis on 03/04/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading) {
            //header
            VStack(alignment: .leading) {
                HStack {
                    Image(.profilePhoto)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    
                    VStack {
                        Text("3")
                            .font(.subheadline)
                            .fontWeight(.semibold)
            
                        Text("posts")
                            .font(.footnote)
                    }
                    .padding(.horizontal, 8)
                    
                    VStack {
                        Text("100")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("followers")
                            .font(.footnote)
                    }
                    .padding(.horizontal, 8)
                    
                    VStack {
                        Text("90")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("following")
                            .font(.footnote)
                    }
                    .padding(.horizontal, 8)
                    
                    Spacer()

                    
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Felipe Assis")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Text("Porto Alegre - RS")
                        .font(.footnote)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 32)
                        .overlay(RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray, lineWidth: 1))
                })
                Divider()
            }
            //Post grid view
        }
        .padding(.horizontal, 24)
    }
}

#Preview {
    ProfileView()
}
