//
//  LibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Артем Галай on 25.11.22.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        VStack() {
            Spacer()
            Text("Ищете свою музыку?")
                .bold()
                .font(.title2)
            Text("Здесь появится купленная Вами в iTunes Store музыка.")
                .multilineTextAlignment(.center)
                .font(.title3)
                .foregroundColor(.gray)
                .padding(.leading, Metrics.textPaddingOffset)
                .padding(.trailing, Metrics.textPaddingOffset)
            Spacer()
            PlayerView()
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

private extension LibraryView {

    struct Metrics {
        static let textPaddingOffset: CGFloat = 15
    }
}
