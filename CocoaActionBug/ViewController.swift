import ReactiveCocoa
import UIKit

let action = Action<Void, Void, NoError> {
    return SignalProducer.empty
}
let cocoaAction = CocoaAction(action) { _ in println("button tapped") }

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // works fine on simulator, crashes on device in Signal.swift, line 44
// commented out in order to be able to run tests
//        button.addTarget(cocoaAction, action: CocoaAction.selector, forControlEvents: .TouchUpInside)
    }
}

