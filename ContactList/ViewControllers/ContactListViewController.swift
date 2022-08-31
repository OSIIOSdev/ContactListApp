import UIKit

final class ContactListViewController: UITableViewController {
    let dataManager = DataManager()
    private var contactList = Person.getPersonData()
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactName", for: indexPath)
        
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = "\(contact.name) \(contact.surname)"
        
        cell.contentConfiguration = content
        
        return cell
    }


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        guard let index = tableView.indexPathForSelectedRow else { return }
        
        let contact = contactList[index.row]
        detailsVC.person = contact
        detailsVC.title = "\(contact.name) \(contact.surname)"
    }
}
