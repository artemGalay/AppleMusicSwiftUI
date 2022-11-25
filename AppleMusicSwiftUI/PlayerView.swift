//
//  PlayerView.swift
//  AppleMusicSwiftUI
//
//  Created by Артем Галай on 25.11.22.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
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
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
