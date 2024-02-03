//
//  ContentView.swift
//  GitSwiftSam26Nov
//
//  Created by sam on 11/26/23.
//

import SwiftUI

struct Meeting {
    var title: String
    var description: String
}

struct ContentView: View {
    @State private var isPresented = false
    let meetings = [
        Meeting(title: "Motion", description: "I move that ..."),
        Meeting(title: "Debate", description: "Call the question+2nd"),
        Meeting(title: "Vote", description: "Yay Nay Abstrain"),
        Meeting(title: "Result", description: "Carry Fail Amend"),
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(meetings, id: \.title) { meeting in
                    NavigationLink(destination: DebatePage(meeting: meeting)) {
                        Text(meeting.title)
                    }
                }
            }
            .navigationTitle("Home MO")
           
        }
        .onAppear() {
            print("hello from the Content View!")
        }
    }
}

struct DebatePage: View {
    var meeting: Meeting
    
    var body: some View {
        VStack {
            Text(meeting.title)
                .font(.largeTitle)
                .padding()
            
            Text(meeting.description)
                .padding()
            
            // Add more debate-related components as needed
        }
        .navigationTitle("Meeting Organizer")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

     
