//
//  CreateMeetingView.swift
//  GitSwiftSam26Nov
//
//  Created by sam on 1/9/24.
//

import SwiftUI


struct CreateMeetingView: View {
    @State private var m1Name = ""
    @State private var m1Date  = ""
    @State var saveMeeting :Bool = false
    
    var body: some View {
       
        NavigationView{
            
            VStack{
                Text("Meeting Name:")
                TextField(" CheckIn ", text: $m1Name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Text("Meeting Date:" )
                TextField(" CheckIn ", text: $m1Date)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Text("Here is where we will add all the info for the meeting")

                
                Text("Here is where we will add all the info for the meeting")

            }.toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                   
                    Button(action: {
                        saveMeeting.toggle()
                        //TODO: insert the information to DB
                        connectDataBase()
                    }) {
                        Text("Save Meeting")
                    }
                    
                }
            
            
        }
            
        }
        
        
        
        
    }
}

#Preview {
    CreateMeetingView()
}
