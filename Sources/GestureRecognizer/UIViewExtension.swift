// Copyright © 2019 Raoul Schwagmeier. All rights reserved.

import UIKit

extension UIView {
    public func addGestureRecognizer<RecognizerType: UIGestureRecognizer>(_ recognizer: GestureRecognizer<RecognizerType>) {
        self.addGestureRecognizer(recognizer.recognizer)
    }
}
