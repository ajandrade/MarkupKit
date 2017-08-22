//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import UIKit
import MarkupKit

class MainViewController: UIViewController {
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var imageView: UIImageView!

    let number = "12345"

    let prompt = NSAttributedString(string: "Press Me!")

    let one = "One"
    let two = "Two"
    let three = "Three"

    override func viewDidLoad() {
        super.viewDidLoad()

        LMViewBuilder.view(withName: "MainViewController", owner: self, root: view)
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)

        if (previousTraitCollection != nil) {
            unbindAll()

            loadView()
            viewDidLoad()
        }
    }

    @IBAction func handleButtonTouchUpInside(_ sender: UIButton) {
        present(UINavigationController(rootViewController: RowViewController()), animated: true)
    }

    @IBAction func handleSwitchValueChanged(_ sender: UISwitch) {
        imageView.isHidden = !sender.isOn
    }
}
