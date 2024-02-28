//
//  ExploreView.swift
//  TikTokDemo
//
//  Created by JungWoo Choi on 25/2/2024.
//

import SwiftUI

struct FriendView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(0 ..< 20) { user in
                        UserCell()
                            .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    FriendView()
}
