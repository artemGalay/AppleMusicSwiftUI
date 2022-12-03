//
//  FavouriteSectionView.swift
//  AppleMusicSwiftUI
//
//  Created by Артем Галай on 2.12.22.
//

import SwiftUI

struct FavouriteRadioView: View {

    var model: FavouriteRadioModel

    var body: some View {
        VStack(alignment: .leading) {
            Divider()
            Text("Избранная радиостанция")
                .foregroundColor(.gray)
            Text(model.name)
                .foregroundColor(.black)
                .bold()
            Text(model.slogan)
                .foregroundColor(.gray)
            Image(model.image)
                .resizable()
                .frame(width: Metrics.imageWidthOffset,
                       height: Metrics.imageHeightOffset)
                .cornerRadius(Metrics.imageCornerRadiusOffset)
            Divider()
        }
    }
}

struct FavouriteSectionView_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteRadioView(model: FavouriteRadioModel.favouriteRadio.first ?? FavouriteRadioModel(image: "", name: "", slogan: ""))
    }
}

private extension FavouriteRadioView {

    struct Metrics {
        static let imageWidthOffset: CGFloat = 360
        static let imageHeightOffset: CGFloat = 250
        static let imageCornerRadiusOffset: CGFloat = 10
    }
}
