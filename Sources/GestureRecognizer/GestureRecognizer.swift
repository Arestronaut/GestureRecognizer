// Copyright © 2019 Raoul Schwagmeier. All rights reserved.

import UIKit

final public class GestureRecognizer<RecognizerType: UIGestureRecognizer> {
    // MARK: - Subtypes
    public  typealias Handler = (RecognizerType) -> Void

    // MARK: - Properties
    public weak var delegate: UIGestureRecognizerDelegate?

    private var handler: Handler
    internal lazy var recognizer: RecognizerType = {
        let gestureRecognizer: RecognizerType = .init(target: self, action: #selector(handle))
        gestureRecognizer.delegate = delegate
        return gestureRecognizer
    }()

    // MARK: - Initialisation
    public init(_ handler: @escaping Handler) {
        self.handler = handler
    }

    // MARK: - Methods
    @objc
    private func handle() {
        handler(recognizer)
    }
}
