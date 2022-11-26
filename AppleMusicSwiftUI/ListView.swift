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
        VStack {
            NavigationView {
                List {
                    ForEach(ListModel.listInfo, id:\.self) {
                        MediaCell(model: $0)
                            .listRowSeparator(.visible)
                    } .onMove(perform: move)
                }
                .navigationBarItems(trailing:
                                        Button(action: {
                    presentation()
                }) {
                    Text("Готово")
                        .foregroundColor(.pink)
                })
                .environment(\.editMode, .constant(.active))
                .listStyle(.plain)
                .navigationTitle("Медиатека")
            } .navigationBarBackButtonHidden(true)
            PlayerView()
        }
    }

    func move(from source: IndexSet, to destination: Int) {
        ListModel.listInfo.move(fromOffsets: source, toOffset: destination)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
