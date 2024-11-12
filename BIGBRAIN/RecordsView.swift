//
//  Records.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/12.
//

import SwiftUI
import SwiftData

struct RecordsView: View {
    @Query private var records: [Record]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        Text("Records")
        NavigationStack {
            List(records, id: \.name) { record in
                HStack {
                    Text(record.name)
                    Spacer()
                    Text("Finished in \(record.turns) turns")
                }
            }
//            .task {
//                context.insert(Record(name: "Jonathan", date: .now, turns: 4))
//            }
        }
    }
}

#Preview {
    RecordsView()
        .modelContainer(for: Record.self, inMemory: true)
}
