
import SwiftUI
import SwiftData
/*([.horizontal, .vertical, .vertical])*/
struct ContentView: View {
    @State private var goToAddView = false
    @State private var goTo = ""
    @State private var goToDeleteView = false
    @State private var currentStacks = 0
    @State private var isShowingSheet = false
    var applications: [ApplicationData] = []
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [.black, .blackGrey]),
                    startPoint: .topLeading,
                    endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
                VStack {
                    HStack {
                        Spacer()
                        Menu("Options") {
                            NavigationLink(destination: addApplicationSheet()) {
                                Text("Add Application")
                            }
                        }
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium, design: .default))
                        .padding()
                    }
                    ScrollView(showsIndicators: false) {
                        List {
                            ForEach(applications) {
                                application in applicationCell(application: application)
                            }
//                            ForEach(0..<5) {_ in
//                                HStack(alignment: .center, spacing: 5) {
//                                    VStack {
//                                        Text("title")
//                                            .frame(width: 280, height: 50)
//                                            .background(.red)
//                                            .font(.system(size: 30, weight: .black , design: .rounded))
//                                            .foregroundColor(.black)
//                                            .cornerRadius(10)
//                                    }
//                                }
//                                
//                                
//                            }
                        }
                    }
                }
                
                
                .defaultScrollAnchor(.top)
            }
            
        }
        .navigationTitle("Applications")
        .navigationBarTitleDisplayMode(.large)
        
    }
    
    
}

struct applicationCell: View {
    let application: ApplicationData
    
    var body: some View {
        HStack {
            Text(application.companyName)
            Text(application.role)
            Text(application.location)
            //Text(application.yearlySalary, format: .currency(code: "USD"))
            Text(application.dateApplied, format: .dateTime.month(.abbreviated).day())
                .frame(width: 70, alignment: .leading)
            Text(application.notes)
        }
    }
}

//struct addApplicationSheet: View {
//    @Environment(\.dismiss) private var dismiss
//    @State private var companyName: String = ""
//    @State private var role: String = ""
//    @State private var location: String = ""
//    @State private var yearlySalary: Double = 0
//    @State private var dateApplied: Date = .now
//    @State private var applicationURL: URL
//    @State private var notes: String = ""
//    
//    var body: some View {
//        NavigationStack {
//            Form {
//                TextField("Company Name", text: $companyName)
//                TextField("Role", text: $role)
//                TextField("Location", text: $location)
//                TextField("Yearly Salary", value: $yearlySalary, format: .currency(code: "USD"))
//                    .keyboardType(.decimalPad)
//            }
//            .navigationTitle("Add Application")
//            .navigationBarTitleDisplayMode(.large)
//            .toolbar {
//                ToolbarItemGroup(placement: .topBarLeading) {
//                    Button("Cancel") { dismiss()}
//                }
//                ToolbarItemGroup(placement: .topBarTrailing) {
//                    Button("Save") {
//                        
//                    }
//                }
//            }
//        }
//    }
//}


#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
