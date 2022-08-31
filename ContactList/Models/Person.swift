import Foundation

let dataManager = DataManager()

struct Person {
    var name: String
    var surname: String
    var email: String
    var phoneNumber: String
}

extension Person {
    static func getPersonData() -> [Person] {
        [Person(name: dataManager.names.randomElement() ?? "Some name",
               surname: dataManager.surnames.randomElement() ?? "Some surname",
               email: dataManager.emailAdresses.randomElement() ?? "Some email",
               phoneNumber: dataManager.phoneNumbers.randomElement() ?? "Some phone number"),
         Person(name: dataManager.names.randomElement() ?? "Some name",
                surname: dataManager.surnames.randomElement() ?? "Some surname",
                email: dataManager.emailAdresses.randomElement() ?? "Some email",
                phoneNumber: dataManager.phoneNumbers.randomElement() ?? "Some phone number"),
         Person(name: dataManager.names.randomElement() ?? "Some name",
                surname: dataManager.surnames.randomElement() ?? "Some surname",
                email: dataManager.emailAdresses.randomElement() ?? "Some email",
                phoneNumber: dataManager.phoneNumbers.randomElement() ?? "Some phone number"),
         Person(name: dataManager.names.randomElement() ?? "Some name",
                surname: dataManager.surnames.randomElement() ?? "Some surname",
                email: dataManager.emailAdresses.randomElement() ?? "Some email",
                phoneNumber: dataManager.phoneNumbers.randomElement() ?? "Some phone number"),
         Person(name: dataManager.names.randomElement() ?? "Some name",
                surname: dataManager.surnames.randomElement() ?? "Some surname",
                email: dataManager.emailAdresses.randomElement() ?? "Some email",
                phoneNumber: dataManager.phoneNumbers.randomElement() ?? "Some phone number")]
    }
}

