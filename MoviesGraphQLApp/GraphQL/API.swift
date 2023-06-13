// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class GetAllMoviesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetAllMovies {
      movies {
        __typename
        id
        title
        year
        genre
        poster
      }
    }
    """

  public let operationName: String = "GetAllMovies"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("movies", type: .list(.object(Movie.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(movies: [Movie?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "movies": movies.flatMap { (value: [Movie?]) -> [ResultMap?] in value.map { (value: Movie?) -> ResultMap? in value.flatMap { (value: Movie) -> ResultMap in value.resultMap } } }])
    }

    public var movies: [Movie?]? {
      get {
        return (resultMap["movies"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Movie?] in value.map { (value: ResultMap?) -> Movie? in value.flatMap { (value: ResultMap) -> Movie in Movie(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Movie?]) -> [ResultMap?] in value.map { (value: Movie?) -> ResultMap? in value.flatMap { (value: Movie) -> ResultMap in value.resultMap } } }, forKey: "movies")
      }
    }

    public struct Movie: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Movie"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("year", type: .nonNull(.scalar(String.self))),
          GraphQLField("genre", type: .nonNull(.scalar(String.self))),
          GraphQLField("poster", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, title: String, year: String, genre: String, poster: String) {
        self.init(unsafeResultMap: ["__typename": "Movie", "id": id, "title": title, "year": year, "genre": genre, "poster": poster])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return resultMap["title"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "title")
        }
      }

      public var year: String {
        get {
          return resultMap["year"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "year")
        }
      }

      public var genre: String {
        get {
          return resultMap["genre"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "genre")
        }
      }

      public var poster: String {
        get {
          return resultMap["poster"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "poster")
        }
      }
    }
  }
}
