//
//  Records.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/12.
//

//TODO: add functionality to remove records (swipe to delete?)

import SwiftUI
import SwiftData

struct RecordsView: View {
    @Query(sort: \Record.turns) private var records: [Record]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        Text("Records")
        NavigationStack {
            List(records, id: \.name) { record in
                HStack {
                    Text(record.name)
                    VStack {
                        HStack {
                            Spacer()
                            if record.turns == 1 {
                                Text("Finished in 1 turn, whoa!")
                            } else {
                                Text("Finished in \(record.turns) turns")
                            }
                        }
                        HStack {
                            Spacer()
                            Text("\(record.date, format: .dateTime.month().day().year())")
                        }
                    }
                }
            }
            
            //this commented-out task will add some sample records to the view. Please comment this back out after you are finished testing, otherwise the sample data will be added to Records every time this view is opened.
            
//            .task {
//                context.insert(Record(name: "Jonathan", date: .now, turns: 2))
//                context.insert(Record(name: "Paul", date: .now, turns: 3))
//            }
        }
    }
}

#Preview {
    RecordsView()
        .modelContainer(for: Record.self, inMemory: true)
}
