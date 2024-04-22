

import Foundation
//import GooglePlaces
import SwiftData

@Model
class ApplicationData {
    var companyName: String
    var role: String
    var location: String
    var yearlySalary: String
    var dateApplied: Date
    var applicationURL: URL
    var notes: String
    
    init(companyName: String, role: String, location: String, yearlySalary: String, dateApplied: Date, applicationURL: URL, notes: String) {
        self.companyName = companyName
        self.role = role
        self.location = location
        self.yearlySalary = yearlySalary
        self.dateApplied = dateApplied
        self.applicationURL = applicationURL
        self.notes = notes
    }
    
}
