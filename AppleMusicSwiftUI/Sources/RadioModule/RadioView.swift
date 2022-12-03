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
                        ForEach(FavouriteRadioModel.favouriteRadio.reversed(), id:\.self) {
                            FavouriteRadioView(model: $0)
                                .padding(.leading, Metrics.paddingLeading)
                        }
                    }
                }
                VStack(alignment: .leading) {
                    Text("Станции")
                        .bold()
                        .font(.title)
                        .padding(.leading, Metrics.paddingLeading)
                    LazyVGrid(columns: colomns) {
                        ForEach(FavouriteRadioModel.favouriteRadio, id:\.self) {
                            AllRadioView(model: $0)
                                .padding(.leading, Metrics.paddingLeading)
                        }
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

private extension RadioView {
    
    struct Metrics {
        static let paddingLeading: CGFloat = 10
    }
}
