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

class ViewController: UIViewController {
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var imageView: UIImageView!

    @objc let number = "12345"

    @objc let one = "One"
    @objc let two = "Two"
    @objc let three = "Three"

    @objc let prompt = NSAttributedString(string: "Press Me!")

    override func loadView() {
        view = LMViewBuilder.view(withName: "ViewController", owner: self, root: nil)
    }

    @IBAction func handlePrimaryActionTriggered(_ sender: UIButton) {
        NSLog("Button pressed.")
    }

    @IBAction func handleSwitchValueChanged(_ sender: UISwitch) {
        imageView.isHidden = !sender.isOn
    }
}