//
//  AllRadioView.swift
//  AppleMusicSwiftUI
//
//  Created by Артем Галай on 3.12.22.
//

import SwiftUI

struct AllRadioView: View {

    var model: FavouriteRadioModel
    
    var body: some View {
        ZStack(alignment: .leading) {
            HStack() {
                Image(model.image)
                    .resizable()
                    .cornerRadius(Metrics.imageCornerRadiusOffset)
                    .frame(width: Metrics.imageWidthHeightOffset,
                           height: Metrics.imageWidthHeightOffset)
                VStack(alignment: .leading) {
                    Text(model.name)
                        .bold()
                    Text(model.slogan)
                        .foregroundColor(.gray)
                }
                .padding(Metrics.hStackPadding)
            }
            Divider()
                .offset(y: Metrics.dividerYOffset)
                .padding(.bottom, Metrics.dividerBottomPadding)
        }
    }
}

struct AllRadioView_Previews: PreviewProvider {
    static var previews: some View {
        AllRadioView(model: FavouriteRadioModel.favouriteRadio.first ?? FavouriteRadioModel(image: "", name: "", slogan: ""))
    }
}

private extension AllRadioView {

    struct Metrics {
        static let imageCornerRadiusOffset: CGFloat = 10
        static let imageWidthHeightOffset: CGFloat = 120
        static let hStackPadding: CGFloat = 10
        static let dividerBottomPadding: CGFloat = 10
        static let dividerYOffset: CGFloat = 70
    }
}
