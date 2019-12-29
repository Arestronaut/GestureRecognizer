// Copyright © 2019 Raoul Schwagmeier. All rights reserved.

import UIKit

final public class GestureRecognizer<RecognizerType: UIGestureRecognizer> {
    // MARK: - Subtypes
    public  typealias Handler = () -> Void

    // MARK: - Properties
    private var handler: Handler
    internal lazy var recognizer: RecognizerType = .init(target: self, action: #selector(handle))

    // MARK: - Initialisation
    public init(_ handler: @escaping Handler) {
        self.handler = handler
    }

    // MARK: - Methods
    public func addToView(_ view: UIView) { view.addGestureRecognizer(recognizer) }

    @objc
    private func handle() {
        handler()
    }
}
