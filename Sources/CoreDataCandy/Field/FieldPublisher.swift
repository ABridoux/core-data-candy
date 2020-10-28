//
// Copyright © 2018-present Amaris Software.
//

import Combine
import CoreData

/// A field that can publish its value
public protocol FieldPublisher {
    associatedtype Entity: DatabaseEntity
    associatedtype Value
    associatedtype OutputError: ConversionError

    /// A publisher for the given entity property with an ouput conversion
    func publisher(for entity: Entity) -> AnyPublisher<Value, OutputError>
}
