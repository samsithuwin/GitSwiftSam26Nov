//
//  motionView.swift
//  GitSwiftSam26Nov
//
//  Created by sam on 1/9/24.
//

import SwiftUI


struct MotionView: View {
    // State variable to hold the formatted date string
    @State private var currentDate: String = ""

    var body: some View {
        VStack {
            Text("Current Date:")
                .font(.title)
                .padding()

            Text(currentDate)
                .font(.headline)
                .padding()

            // Button to update the date
            Button("Update Date") {
                updateCurrentDate()
            }
            .padding()
        }
    }

    // Function to update the formatted date string
    func updateCurrentDate() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss" // Customize the format as needed

        currentDate = dateFormatter.string(from: Date())
    }
}

struct MotionView_Previews: PreviewProvider {
    static var previews: some View {
        MotionView()
    }
}
