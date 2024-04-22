

import SwiftUI

struct addApplicationSheet: View {
    @Environment(\.dismiss) var dismiss
    @State var companyName: String = ""
    @State var role: String = ""
    @State  var location: String = ""
    @State  var yearlySalary: Double = 0
    @State  var dateApplied: Date = .now
    //@State  var applicationURL: URL
    @State var notes: String = ""
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Company Name", text: $companyName)
                TextField("Role", text: $role)
                TextField("Location", text: $location)
                TextField("Yearly Salary", value: $yearlySalary, format: .currency(code: "USD"))
                    .keyboardType(.decimalPad)
                
            }
            .navigationTitle("Add Application")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                    Button("") { dismiss()}
                }
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button("Save") {
                        
                    }
                }
            }
        }
    }
}
#Preview {
    addApplicationSheet()
}
