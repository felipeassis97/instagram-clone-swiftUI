//
//  FeedItem.swift
//  Instagram
//
//  Created by Felipe Assis on 08/04/24.
//

import SwiftUI

struct FeedItem: View {
    var body: some View {
        VStack {
            HStack {
                Image(.mufasa2)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Text("mufasinha")
                    .font(.footnote)
                    .fontWeight(.semibold)
            }
//            //Image
//            Image(.mufasa3)
//                .resizable()
//                .scaledToFill()
//                .frame(height: 400)
//            
//            HStack {}
  
            
            //Likes
            
            // description
            
            //DateTime
            
        }
    }
}

#Preview {
    FeedItem()
}
