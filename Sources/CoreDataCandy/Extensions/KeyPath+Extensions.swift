//
// CoreDataCandy
// Copyright © 2018-present Amaris Software.
// MIT license, see LICENSE file for details

import Foundation
import CoreData

extension KeyPath where Root: NSObject {

    /// Name of the property pointed at
    var label: String { NSExpression(forKeyPath: self).keyPath }
}
