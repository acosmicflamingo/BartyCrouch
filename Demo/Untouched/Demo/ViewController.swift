import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        CFLocalizedString("Love", comment: "Comment for Love")
        CFLocalizedString("How are you?", comment: "")
        CFLocalizedString("I'm fine", comment: "Comment for I'm fine - #bc-ignore!")

        title = CFLocalizedString("onboarding.first-page.header-title", comment: "")
        let lines: Int = (0 ..< 10).map { "\($0 + 1): \(CFLocalizedString("onboarding.first-page.line", comment: "Line Comment"))" }.count

        CFLocalizedString("ShortKey", comment: "")
    }
}
