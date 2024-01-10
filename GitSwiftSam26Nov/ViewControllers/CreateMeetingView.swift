//
//  CreateMeetingView.swift
//  GitSwiftSam26Nov
//
//  Created by sam on 1/9/24.
//

import SwiftUI

struct CreateMeetingView: View {
    
    @State var saveMeeting :Bool = false
    
    var body: some View {
       
        NavigationView{
            
            VStack{
                Text("Meeting Name:")
                Text("Meeting Date:" )
                Text("Here is where we will add all the info for the meeting")

                
                Text("Here is where we will add all the info for the meeting")

            }.toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                   
                    Button(action: {
                        saveMeeting.toggle()
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
