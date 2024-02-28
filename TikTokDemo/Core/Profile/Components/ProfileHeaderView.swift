//
//  ProfileHeaderView.swift
//  TikTokDemo
//
//  Created by JungWoo Choi on 28/2/2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    var isStar: Bool = true
    
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 120, height: 120)
                .foregroundStyle(Color(.systemGray5))
            
            HStack(spacing: 4) {
                Text("@User_ID")
                Image(systemName: isStar ? "checkmark.seal.fill" : "")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundStyle(.blue)
            }
            
            HStack(spacing: 28) {
                UserStarView(value: "365", title: "Following")
                
                UserStarView(value: "36.2K", title: "Followers")
                
                UserStarView(value: "20.3M", title: "Likes")
            }
            
            HStack {
                Button {
                    // TODO: -
                } label: {
                    Text("Edit profile")
                        .font(.system(size: 18, weight: .bold))
                        .padding()
                        .padding(.horizontal, 28)
                }
                .clipShape(.buttonBorder)
                .border(.gray)
                
                Button {
                    // TODO: -
                } label: {
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .frame(width: 18, height: 24)
                        .padding(.all, 15)
                }
                .clipShape(.buttonBorder)
                .border(.gray)
                
                Button {
                    // TODO: -
                } label: {
                    Image(systemName: "bookmark")
                        .resizable()
                        .frame(width: 16, height: 22)
                        .padding()
                }
                .clipShape(.buttonBorder)
                .border(.gray)
            }
            .foregroundStyle(.black)
            
            Text("Rachel Pedersen \nCEO, wife, mom WAHM, \nSocial Media Manager")
        }
    }
}

struct UserStarView: View {
    
    var value: String
    var title: String
    
    var body: some View {
        VStack(spacing: 8) {
            Text(value)
                .font(.system(size: 24, weight: .bold))
            Text(title)
                .font(.system(size: 18))
                .foregroundStyle(Color(.lightGray))
        }
    }
}


#Preview {
    ProfileHeaderView()
}
