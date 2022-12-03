//
//  FavouriteRadioModel.swift
//  AppleMusicSwiftUI
//
//  Created by Артем Галай on 2.12.22.
//

import SwiftUI

struct FavouriteRadioModel: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var name: String
    var slogan: String

    static var favouriteRadio: [FavouriteRadioModel] = [FavouriteRadioModel(image: "recordRadio",
                                                                            name: "Radio Record",
                                                                            slogan: "Первое танцевальное радио!"),
                                                        FavouriteRadioModel(image: "bbcRadio",
                                                                            name: "BBCRadio",
                                                                            slogan: "We are ONE BBC!"),
                                                        FavouriteRadioModel(image: "europaPlus",
                                                                            name: "Europa Plus",
                                                                            slogan: "Больше хитов! Больше музыки!"),
                                                        FavouriteRadioModel(image: "radioRock",
                                                                            name: "Radio Rock",
                                                                            slogan: "Rocking the waves!"),
                                                        FavouriteRadioModel(image: "russianRadio",
                                                                            name: "Русское Радио",
                                                                            slogan: "Все будет хорошо!"),
                                                        FavouriteRadioModel(image: "nasheRadio",
                                                                            name: "Наше Радио",
                                                                            slogan: "Наша музыка — наше радио!"),
                                                        FavouriteRadioModel(image: "dFm",
                                                                            name: "Dfm",
                                                                            slogan: "Dance Russia Dance Now!")]
}
