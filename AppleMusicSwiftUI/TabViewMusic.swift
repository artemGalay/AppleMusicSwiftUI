//
//  TabViewMusic.swift
//  AppleMusicSwiftUI
//
//  Created by Артем Галай on 25.11.22.
//

import SwiftUI

struct TabViewMusic: View {
    var body: some View {
        NavigationView {
            TabView {
                LibraryView()
                    .tabItem {
                        Image(systemName: "square.stack.fill")
                        Text("Медиатека")
                    }
                Text("Radio")
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                Text("Search")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            } 
            .accentColor(.red)
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing: NavigationLink(
                destination:
                    ListView(),
                label: {
                    Text("Править")
                        .foregroundColor(.red)
                }))
        }
    }
}

struct TabViewMusic_Previews: PreviewProvider {
    static var previews: some View {
        TabViewMusic()
    }
}
