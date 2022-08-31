import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneNumberLabel.text = person.phoneNumber
        emailLabel.text = person.email
    }
}
