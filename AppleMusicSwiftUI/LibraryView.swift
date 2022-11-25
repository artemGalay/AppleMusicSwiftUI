//
//  LibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Артем Галай on 25.11.22.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
            TabView {
                VStack() {
                    Spacer()
                    Text("Ищете свою музыку?")
                        .bold()
                        .font(.title2)
                    Text("Здесь появится купленная Вами в iTunes Store музыка.")
                        .multilineTextAlignment(.center)
                        .font(.title3)
                        .foregroundColor(.gray)
                        .padding(.leading, 15)
                        .padding(.trailing, 15)
                    Spacer()
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color.init(uiColor: .systemGray6))
                            .frame(width: 450, height: 70)
                        HStack {
                            Image(systemName: "music.note")
                                .padding(20)
                                .background(Color.init(uiColor: .systemGray5))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow(radius: 4)
                            Text("Не исполняется")
                                .font(.body)
                                .padding(.leading, 10)
                            Image(systemName: "play.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .padding(.trailing, 20)
                                .padding(.leading, 50)
                            Image(systemName: "forward.fill")
                                .resizable()
                                .frame(width: 45, height: 25)
                        }
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

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
