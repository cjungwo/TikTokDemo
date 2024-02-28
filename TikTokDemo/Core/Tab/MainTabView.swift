//
//  MainTabView.swift
//  TikTokDemo
//
//  Created by JungWoo Choi on 25/2/2024.
//

import SwiftUI

struct MainTabView: View {
    
    @State var selectedTab = 0
    
    var body: some View {
        TabView {
            Text("Feed")
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                        Text("Home")
                    }
                }
                .onAppear { selectedTab = 0 }
                .tag(0)
            
            Text("Friends")
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab == 1 ? "person.2.fill" : "person.2")
                        Text("Friends")
                    }
                }
                .onAppear { selectedTab = 1 }
                .tag(1)
            
            Text("Upload Post")
                .tabItem {
                    VStack {
                        Image(systemName: "plus")
                    }
                }
                .onAppear { selectedTab = 2 }
                .tag(2)
            
            Text("Notifications")
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab == 3 ? "heart.fill" : "heart")
                        Text("Inbox")
                    }
                }
                .onAppear { selectedTab = 3 }
                .tag(3)
            
            Text("Profile")
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab == 4 ? "person.fill" : "person")
                        Text("Profile")
                    }
                }
                .onAppear { selectedTab = 4 }
                .tag(4)
            
            
        }
    }
}

#Preview {
    MainTabView()
}
