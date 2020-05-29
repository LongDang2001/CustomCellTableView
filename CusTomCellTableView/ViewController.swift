

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    
    var arrayNumber: [String] = ["mot","hai","ba","bon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayNumber.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IDCell", for: indexPath) as? TableViewCell
        cell?.textLabel?.text = arrayNumber[indexPath.row]
        cell?.myTextFieldCell.text = arrayNumber[indexPath.row]
        return cell!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let PassDataSegue = segue.destination as? ViewControllerSecond
        if let indexSegue = myTableView.indexPathForSelectedRow {
            PassDataSegue?.dataSecond = arrayNumber[indexSegue.row]
        }
        
    }
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        let passDataUnwind = unwindSegue.source as? ViewControllerSecond
        if let indexRowInCell = myTableView.indexPathForSelectedRow {
            arrayNumber.append(passDataUnwind?.dataSecond ?? "mot")
            myTableView.reloadData()
        }
    }


}

