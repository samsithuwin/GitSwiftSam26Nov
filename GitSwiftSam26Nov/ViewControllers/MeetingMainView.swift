//
//  MeetingMain.swift
//  GitSwiftSam26Nov
//MeetingMainView displays a list of items using NavigationSplitView with functionalities adding, editing and deleting items.
//  Created by sam on 1/9/24.
//


import SwiftUI
import SQLite3

struct MeetingMainView: View {
    
    
    @State var isAddingMeeting: Bool = false
    
  
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(items) { item in
                    // For each item, navigate to a detailed view
                    NavigationLink {
                        Text("Governor Proposal \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
                        Spacer()
                        Text("Governor Proposal")
                        Spacer()
                        Text("Status: 👍")
                    } label: {
                        Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
                    }
                }
                // The deleteItems function deletes selected items from the Core Data context.
                .onDelete(perform: deleteItems)
            }
            #if os(macOS)
            .navigationSplitViewColumnWidth(min: 180, ideal: 200)
            #endif
            .toolbar {
                #if os(iOS)
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                #endif
                // Toolbar item "Add Item" button that triggers the addItem function.
                // The addItem function inserts a new Item into the Core Data context.
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
    }

    // The addItem() function adds a new Item to the Core Data context (modelContext) with a timestamp set to the current date.
    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    // This function deletes items from the Core Data context based on the indices provided in the offsets parameter.
    // It uses a for loop to iterate over the indices in the offsets set and deletes the corresponding Item from the modelContext.
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

// The preview shows the MeetingMainView with a model container for the Item entity.
#Preview {
    MeetingMainView()
        .modelContainer(for: Item.self, inMemory: true)
}


