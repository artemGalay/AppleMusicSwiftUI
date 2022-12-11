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
                .frame(width: Metrics.rectangleWigthOffset,
                       height: Metrics.rectangleHeightOffset)
            HStack {
                Image("song")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: Metrics.songImageWigthHeightOffset,
                           height: Metrics.songImageWigthHeightOffset)
                    .background(Color.init(uiColor: .systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: Metrics.songImageCornerRadiusOffset))
                    .shadow(radius: Metrics.songImageCornerRadiusOffset)
                Text("Не исполняется")
                    .font(.body)
                    .padding(.leading,
                             Metrics.textPaddingLeadingOffset)
                Image(systemName: "play.fill")
                    .resizable()
                    .frame(width: Metrics.playImageWigthHeightOffset,
                           height: Metrics.playImageWigthHeightOffset)
                    .padding(.trailing, Metrics.playImagePaddingTrailingOffset)
                    .padding(.leading, Metrics.playImagePaddingLeadingOffset)
                Image(systemName: "forward.fill")
                    .resizable()
                    .frame(width: Metrics.forwardImageWigthtOffset,
                           height: Metrics.forwardImageHeightOffset)
            } .overlay(
                VStack{
                    Divider()
                        .offset(x: Metrics.dividerXOffset,
                                y: Metrics.dividerYOffset)
                        .frame(width: Metrics.dividerWidthOffset)
                })
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

private extension PlayerView {
    
    struct Metrics {
        static let rectangleWigthOffset: CGFloat = 450
        static let rectangleHeightOffset: CGFloat = 70
        
        static let songImageWigthHeightOffset: CGFloat = 60
        static let songImageCornerRadiusOffset: CGFloat = 10
        
        static let textPaddingLeadingOffset: CGFloat = 10
        
        static let playImageWigthHeightOffset: CGFloat = 25
        static let playImagePaddingTrailingOffset: CGFloat = 25
        static let playImagePaddingLeadingOffset: CGFloat = 50
        
        static let forwardImageWigthtOffset: CGFloat = 45
        static let forwardImageHeightOffset: CGFloat = 45
        
        static let dividerXOffset: CGFloat = 0
        static let dividerYOffset: CGFloat = 34
        static let dividerWidthOffset: CGFloat = 450
    }
}
