

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var myTextFieldCell: UITextField!
    @IBOutlet weak var myImageCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
