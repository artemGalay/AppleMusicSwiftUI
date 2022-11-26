//
//  MediaCell.swift
//  AppleMusicSwiftUI
//
//  Created by Артем Галай on 25.11.22.
//

import SwiftUI

struct MediaCell: View {

    var model: ListModel
    @State private var isShowed = false

    var body: some View {
        HStack {
            ZStack {
                Button(action: { isShowed.toggle() },
                       label: {
                    Image(systemName: "circle")
                    .foregroundColor(.gray)})
                if isShowed {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.pink)
                        .background(Color.white)
                        .cornerRadius(10)
                }}
            Image(systemName: model.icon)
                .foregroundColor(.pink)
            Text(model.name)
        }
    }
}

struct MediaCell_Previews: PreviewProvider {
    static var previews: some View {
        MediaCell(model: ListModel.listInfo.first ?? ListModel(icon: "none", name: "none"))
    }
}
