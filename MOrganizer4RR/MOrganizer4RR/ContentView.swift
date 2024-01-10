import SwiftUI

struct ContentView: View {
    // ... (unchanged state variables)

    // State variable to track the current page
    @State private var currentPage: Int = 1

    var body: some View {
        NavigationView {
            VStack {
                if currentPage == 1 {
                    // Page 1: Motion Input
                    Text("Meeting Organizer 0.0.0")

                    // ... (unchanged content)

                    NavigationLink("Unanimous Consent", destination: DebatePage(motion: $motion, secondName: $secondName, currentPage: $currentPage))
                } else if currentPage == 2 {
                    // Page 2: Debate Input
                    Text("Debate the motion:")

                    // ... (unchanged content)

                    NavigationLink("End the Debate", destination: VotePage(debate: $debate, debate2: $debate2, debate3: $debate3, debate4: $debate4, caller: $caller, caller2: $caller2, currentPage: $currentPage))
                } else if currentPage == 3 {
                    // Page 3: Vote Input

                    // ... (unchanged content)

                    NavigationLink("Next", destination: ResultPage(motion: $motion, secondName: $secondName, debate: $debate, debate2: $debate2, debate3: $debate3, debate4: $debate4, caller: $caller, caller2: $caller2, yayVotes: $yayVotes, nayVotes: $nayVotes, abstainVotes: $abstainVotes, currentPage: $currentPage))
                } else if currentPage == 4 {
                    // Page 4: Result

                    // ... (unchanged content)

                    HStack {
                        NavigationLink("Recount Vote", destination: VotePage(debate: $debate, debate2: $debate2, debate3: $debate3, debate4: $debate4, caller: $caller, caller2: $caller2, currentPage: $currentPage))
                        Spacer()
                        NavigationLink("Amend Motion", destination: DebatePage(motion: $motion, secondName: $secondName, currentPage: $currentPage))
                    }
                }
            }
            .padding()
            .navigationTitle("Meeting Organizer")
        }
    }
}

struct DebatePage: View {
    // ... (unchanged content)
    
    @Binding var motion: String
    @Binding var secondName: String
    @Binding var currentPage: Int
    
    var body: some View {
        VStack {
            // ... (unchanged content)

            Button("Unanimous Consent", action: {
                currentPage = 2
            })
        }
    }
}

struct VotePage: View {
    // ... (unchanged content)
    
    @Binding var debate: String
    @Binding var debate2: String
    @Binding var debate3: String
    @Binding var debate4: String
    @Binding var caller: String
    @Binding var caller2: String
    @Binding var currentPage: Int
    
    var body: some View {
        VStack {
            // ... (unchanged content)

            Button("End the Debate", action: {
                currentPage = 3
            })
        }
    }
}

struct ResultPage: View {
    // ... (unchanged content)
    
    @Binding var motion: String
    @Binding var secondName: String
    @Binding var debate: String
    @Binding var debate2: String
    @Binding var debate3: String
    @Binding var debate4: String
    @Binding var caller: String
    @Binding var caller2: String
    @Binding var yayVotes: String
    @Binding var nayVotes: String
    @Binding var abstainVotes: String
    @Binding var currentPage: Int
    
    var body: some View {
        VStack {
            // ... (unchanged content)

            HStack {
                NavigationLink("Recount Vote", destination: VotePage(debate: $debate, debate2: $debate2, debate3: $debate3, debate4: $debate4, caller: $caller, caller2: $caller2, currentPage: $currentPage))
                Spacer()
                NavigationLink("Amend Motion", destination: DebatePage(motion: $motion, secondName: $secondName, currentPage: $currentPage))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

