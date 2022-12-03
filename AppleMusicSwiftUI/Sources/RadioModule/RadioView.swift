//
//  RadioView.swift
//  AppleMusicSwiftUI
//
//  Created by Артем Галай on 2.12.22.
//

import SwiftUI

struct RadioView: View {

    let rows = [
        GridItem(.flexible())
    ]

    let colomns = [
        GridItem(.flexible())
    ]
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        ForEach(FavouriteRadioModel.favouriteRadio, id:\.self) {
                            FavouriteRadioView(model: $0)
                                .padding(.leading, 10)
                        }
                    }
                }
                LazyVGrid(columns: colomns) {
                    ForEach(0..<50) { index in
                        Rectangle()
                            .cornerRadius(5)
                            .frame(width: 100, height: 100)
                    }
                }
            }
            .navigationTitle("Радио")
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
