//
//  ListModel.swift
//  AppleMusicSwiftUI
//
//  Created by Артем Галай on 25.11.22.
//

import SwiftUI

struct ListModel: Identifiable {
    var id = UUID()
    var icon: String
    var name: String
    var isSelection: Bool?

    static var listInfo: [ListModel] = [ListModel(icon: "music.note.list", name: "Плейлисты"),
                                        ListModel(icon: "music.mic", name: "Артисты"),
                                        ListModel(icon: "square.stack", name: "Альбомы"),
                                        ListModel(icon: "music.note", name: "Песни"),
                                        ListModel(icon: "tv", name: "Телешоу и фильмы"),
                                        ListModel(icon: "music.note.tv", name: "Видеоклипы"),
                                        ListModel(icon: "guitars", name: "Жанры"),
                                        ListModel(icon: "person.2.crop.square.stack", name: "Сборники"),
                                        ListModel(icon: "music.quarternote.3", name: "Авторы"),
                                        ListModel(icon: "arrow.down.circle", name: "Загружено"),
                                        ListModel(icon: "music.note.house", name: "Домашняя коллекция")]
}
