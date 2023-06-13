// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class SayHelloQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query SayHello {
      hello
    }
    """

  public let operationName: String = "SayHello"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("hello", type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(hello: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "hello": hello])
    }

    public var hello: String? {
      get {
        return resultMap["hello"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "hello")
      }
    }
  }
}
