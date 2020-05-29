

import UIKit

class ViewControllerSecond: UIViewController {

    @IBOutlet weak var myTextFieldSecond: UITextField!
    @IBOutlet weak var myButtonSecond: UIButton!
    var dataSecond: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if dataSecond != nil {
            myTextFieldSecond.text = dataSecond
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        dataSecond = myTextFieldSecond.text
    }
    

}
