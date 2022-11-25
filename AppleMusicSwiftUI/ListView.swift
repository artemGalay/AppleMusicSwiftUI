//
//  ListView.swift
//  AppleMusicSwiftUI
//
//  Created by Артем Галай on 25.11.22.
//

import SwiftUI

struct ListView: View {

    @Environment(\.dismiss) var presentation

    var body: some View {
        NavigationView {
            List {

            }
            .navigationBarItems(trailing:
                                    Button(action: {
                presentation()
            }) {
                Text("Готово")
                    .foregroundColor(.red)
            })
            .navigationTitle("Медиатека")
        } .navigationBarBackButtonHidden(true)
    }
}
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
