import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var perPerson: UILabel!
    @IBOutlet weak var summary: UILabel!
    
    var tip: Int?
    var split: Int?
    var result: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        perPerson.text = "$\(result ?? "Error")"
        summary.text = "Split between \(split ?? 0) people, with \(tip ?? 0 * 100)% tip."
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
