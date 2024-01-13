//
//  MeetingMain.swift
//  GitSwiftSam26Nov
//
//  Created by sam on 1/9/24.
//

import SwiftUI
import SQLite3

struct MeetingMainView: View {
    
    
    @State var isAddingMeeting: Bool = false
    
  
    
    var body: some View {
        NavigationView{
          
            VStack{
                List(){
                    
                    HStack {
                        Text("Date: 1/1/2024")
                        Spacer()
                        Text("Govenor Proposal")
                        Spacer()
                        Text("Status:  👍 ")
                        
                    }
                    
                    HStack {
                        Text("Date: 12/4/2023")
                        Spacer()
                        Text("Mobile Weekly")
                        Spacer()
                        Text("Status: 👎 ")
                        
                    }
                    
                    HStack {
                        Text("Date: 12/4/2023")
                        Spacer()
                        Text("Mobile Weekly")
                        Spacer()
                        Text("Status: 🫳 ")
                        
                    }
                    
                    
                }
            }.frame(alignment: .top)
                .navigationTitle("Meeting List")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                       
                        Button(action: {
                                    isAddingMeeting.toggle()
                        }) {
                            Text("Add Meeting")
                        }
                        
                    }
                }.background(
                
                    NavigationLink("", destination: CreateMeetingView(),
                                            isActive: self.$isAddingMeeting)
                
                )
                 
         
            
           
        }
        
        
    }
}

#Preview {
    MeetingMainView()
}
