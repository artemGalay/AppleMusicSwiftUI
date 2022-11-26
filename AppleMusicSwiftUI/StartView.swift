//
//  TabViewMusic.swift
//  AppleMusicSwiftUI
//
//  Created by Артем Галай on 25.11.22.
//

import SwiftUI

struct StartView: View {

    init() {
        UITabBar.appearance().backgroundColor = UIColor.systemGray6
    }

    var body: some View {
        TabView {
            VStack {
                NavigationView {
                    LibraryView()
                        .navigationTitle("Медиатека")
                        .navigationBarItems(trailing: NavigationLink(
                            destination:
                                ListView(),
                            label: {
                                Text("Править")
                                    .foregroundColor(.pink)
                            }))
                }
            }
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
        .accentColor(.pink)
    }
}

struct TabViewMusic_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
