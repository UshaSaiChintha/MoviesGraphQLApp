// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class GetAllMoviesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetAllMovies($genre: String) {
      movies(filter: {genre: $genre}) {
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

  public var genre: String?

  public init(genre: String? = nil) {
    self.genre = genre
  }

  public var variables: GraphQLMap? {
    return ["genre": genre]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("movies", arguments: ["filter": ["genre": GraphQLVariable("genre")]], type: .list(.object(Movie.selections))),
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

public final class GetAllGenresQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetAllGenres {
      genres {
        __typename
        name
      }
    }
    """

  public let operationName: String = "GetAllGenres"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("genres", type: .list(.object(Genre.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(genres: [Genre?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "genres": genres.flatMap { (value: [Genre?]) -> [ResultMap?] in value.map { (value: Genre?) -> ResultMap? in value.flatMap { (value: Genre) -> ResultMap in value.resultMap } } }])
    }

    public var genres: [Genre?]? {
      get {
        return (resultMap["genres"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Genre?] in value.map { (value: ResultMap?) -> Genre? in value.flatMap { (value: ResultMap) -> Genre in Genre(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Genre?]) -> [ResultMap?] in value.map { (value: Genre?) -> ResultMap? in value.flatMap { (value: Genre) -> ResultMap in value.resultMap } } }, forKey: "genres")
      }
    }

    public struct Genre: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Genre"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String) {
        self.init(unsafeResultMap: ["__typename": "Genre", "name": name])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}
