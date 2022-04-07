//// Automatically Generated From Tokens.swift.gyb.
//// Do Not Edit Directly!
//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2022 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

/// Represents the specification for a Token in the TokenSyntax file.
public protocol Token {
  var name: String { get }
  var kind: String { get }
  var serializationCode: Int { get }
  var unprefixedKind: String? { get }
  var text: String { get }
  var classification: String? { get }
  var isKeyword: Bool { get }
  var requiresLeadingSpace: Bool { get }
  var requiresTrailingSpace: Bool { get }
}

/// Represents a keyword token.
public protocol Keyword: Token { }

extension Keyword { }

public protocol SwiftKeyword: Keyword { }

public struct DeclKeyword: SwiftKeyword {
  public let name: String
  public let kind: String
  public let serializationCode: Int
  public let unprefixedKind: String?
  public let text: String
  public let classification: String?
  public let isKeyword: Bool
  public let requiresLeadingSpace: Bool
  public let requiresTrailingSpace: Bool

  public init(name: String, serializationCode: Int, text: String, classification: String? = "Keyword") {
    self.name = name
    self.kind = "kw_\(text)"
    self.serializationCode = serializationCode
    self.unprefixedKind = text
    self.text = text
    self.classification = classification
    self.isKeyword = true
    self.requiresLeadingSpace = false
    self.requiresTrailingSpace = true
  }
}

public struct StmtKeyword: SwiftKeyword {
  public let name: String
  public let kind: String
  public let serializationCode: Int
  public let unprefixedKind: String?
  public let text: String
  public let classification: String?
  public let isKeyword: Bool
  public let requiresLeadingSpace: Bool
  public let requiresTrailingSpace: Bool

  public init(name: String, serializationCode: Int, text: String, classification: String? = "Keyword") {
    self.name = name
    self.kind = "kw_\(text)"
    self.serializationCode = serializationCode
    self.unprefixedKind = text
    self.text = text
    self.classification = classification
    self.isKeyword = true
    self.requiresLeadingSpace = false
    self.requiresTrailingSpace = true
  }
}

public struct ExprKeyword: SwiftKeyword {
  public let name: String
  public let kind: String
  public let serializationCode: Int
  public let unprefixedKind: String?
  public let text: String
  public let classification: String?
  public let isKeyword: Bool
  public let requiresLeadingSpace: Bool
  public let requiresTrailingSpace: Bool

  public init(name: String, serializationCode: Int, text: String, classification: String? = "Keyword") {
    self.name = name
    self.kind = "kw_\(text)"
    self.serializationCode = serializationCode
    self.unprefixedKind = text
    self.text = text
    self.classification = classification
    self.isKeyword = true
    self.requiresLeadingSpace = false
    self.requiresTrailingSpace = true
  }
}

public struct PatternKeyword: SwiftKeyword {
  public let name: String
  public let kind: String
  public let serializationCode: Int
  public let unprefixedKind: String?
  public let text: String
  public let classification: String?
  public let isKeyword: Bool
  public let requiresLeadingSpace: Bool
  public let requiresTrailingSpace: Bool

  public init(name: String, serializationCode: Int, text: String, classification: String? = "Keyword") {
    self.name = name
    self.kind = "kw_\(text)"
    self.serializationCode = serializationCode
    self.unprefixedKind = text
    self.text = text
    self.classification = classification
    self.isKeyword = true
    self.requiresLeadingSpace = false
    self.requiresTrailingSpace = true
  }
}

public struct SilKeyword: Keyword {
  public let name: String
  public let kind: String
  public let serializationCode: Int
  public let unprefixedKind: String?
  public let text: String
  public let classification: String?
  public let isKeyword: Bool
  public let requiresLeadingSpace: Bool
  public let requiresTrailingSpace: Bool

  public init(name: String, kind: String, serializationCode: Int, unprefixedKind: String?, text: String, classification: String?, isKeyword:Bool, requiresLeadingSpace: Bool, requiresTrailingSpace: Bool) {
    self.name = name
    self.kind = kind
    self.serializationCode = serializationCode
    self.unprefixedKind = unprefixedKind
    self.text = text
    self.classification = classification
    self.isKeyword = isKeyword
    self.requiresLeadingSpace = requiresLeadingSpace
    self.requiresTrailingSpace = requiresTrailingSpace
  }
}

public struct PoundKeyword: Token {
  public let name: String
  public let kind: String
  public let serializationCode: Int
  public let unprefixedKind: String?
  public let text: String
  public let classification: String?
  public let isKeyword: Bool
  public let requiresLeadingSpace: Bool
  public let requiresTrailingSpace: Bool

  public init(name: String, kind: String, serializationCode: Int, text: String, classification: String = "Keyword") {
    self.name = name
    self.kind = "pound_\(kind)"
    self.serializationCode = serializationCode
    self.unprefixedKind = kind
    self.text = text
    self.classification = classification
    self.isKeyword = true
    self.requiresLeadingSpace = false
    self.requiresTrailingSpace = true
  }
}

public struct PoundObjectLiteral: Token {
  public let name: String
  public let kind: String
  public let serializationCode: Int
  public let unprefixedKind: String?
  public let text: String
  public let classification: String?
  public let isKeyword: Bool
  public let requiresLeadingSpace: Bool
  public let requiresTrailingSpace: Bool
  public let description: String
  public let `protocol`: String

  public init(name: String, kind: String, serializationCode: Int, text: String, classification: String = "ObjectLiteral", description: String, `protocol`: String) {
    self.name = name
    self.kind = kind
    self.serializationCode = serializationCode
    self.unprefixedKind = kind
    self.text = text
    self.classification = classification
    self.isKeyword = true
    self.requiresLeadingSpace = false
    self.requiresTrailingSpace = true
    self.description = description
    self.`protocol` = `protocol`
  }
}

public struct PoundConfig: Token {
  public let name: String
  public let kind: String
  public let serializationCode: Int
  public let unprefixedKind: String?
  public let text: String
  public let classification: String?
  public let isKeyword: Bool
  public let requiresLeadingSpace: Bool
  public let requiresTrailingSpace: Bool

  public init(name: String, kind: String, serializationCode: Int, text: String, classification: String = "Keyword") {
    self.name = name
    self.kind = kind
    self.serializationCode = serializationCode
    self.unprefixedKind = kind
    self.text = text
    self.classification = classification
    self.isKeyword = true
    self.requiresLeadingSpace = false
    self.requiresTrailingSpace = true
  }
}

public struct PoundDirectiveKeyword: Token {
  public let name: String
  public let kind: String
  public let serializationCode: Int
  public let unprefixedKind: String?
  public let text: String
  public let classification: String?
  public let isKeyword: Bool
  public let requiresLeadingSpace: Bool
  public let requiresTrailingSpace: Bool

    public init(name: String, kind: String, serializationCode: Int, text: String, classification: String = "PoundDirectiveKeyword") {
    self.name = name
    self.kind = kind
    self.serializationCode = serializationCode
    self.unprefixedKind = kind
    self.text = text
    self.classification = classification
    self.isKeyword = true
    self.requiresLeadingSpace = false
    self.requiresTrailingSpace = true
  }
}

public struct PoundConditionalDirectiveKeyword: Token {
  public let name: String
  public let kind: String
  public let serializationCode: Int
  public let unprefixedKind: String?
  public let text: String
  public let classification: String?
  public let isKeyword: Bool
  public let requiresLeadingSpace: Bool
  public let requiresTrailingSpace: Bool

    public init(name: String, kind: String, serializationCode: Int, text: String, classification: String = "PoundDirectiveKeyword") {
    self.name = name
    self.kind = kind
    self.serializationCode = serializationCode
    self.unprefixedKind = kind
    self.text = text
    self.classification = classification
    self.isKeyword = true
    self.requiresLeadingSpace = false
    self.requiresTrailingSpace = true
  }
}

public struct Punctuator: Token {
  public let name: String
  public let kind: String
  public let serializationCode: Int
  public let unprefixedKind: String?
  public let text: String
  public let classification: String?
  public let isKeyword: Bool
  public let requiresLeadingSpace: Bool
  public let requiresTrailingSpace: Bool

  public init(name: String, kind: String, serializationCode: Int, unprefixedKind: String?, text: String, classification: String?, isKeyword:Bool, requiresLeadingSpace: Bool, requiresTrailingSpace: Bool) {
    self.name = name
    self.kind = kind
    self.serializationCode = serializationCode
    self.unprefixedKind = unprefixedKind
    self.text = text
    self.classification = classification
    self.isKeyword = isKeyword
    self.requiresLeadingSpace = requiresLeadingSpace
    self.requiresTrailingSpace = requiresTrailingSpace
  }
}

public struct Literal: Token {
  public let name: String
  public let kind: String
  public let serializationCode: Int
  public let unprefixedKind: String?
  public let text: String
  public let classification: String?
  public let isKeyword: Bool
  public let requiresLeadingSpace: Bool
  public let requiresTrailingSpace: Bool

  public init(name: String, kind: String, serializationCode: Int, unprefixedKind: String?, text: String, classification: String?, isKeyword:Bool, requiresLeadingSpace: Bool, requiresTrailingSpace: Bool) {
    self.name = name
    self.kind = kind
    self.serializationCode = serializationCode
    self.unprefixedKind = unprefixedKind
    self.text = text
    self.classification = classification
    self.isKeyword = isKeyword
    self.requiresLeadingSpace = requiresLeadingSpace
    self.requiresTrailingSpace = requiresTrailingSpace
  }
}

public struct Misc: Token {
  public let name: String
  public let kind: String
  public let serializationCode: Int
  public let unprefixedKind: String?
  public let text: String
  public let classification: String?
  public let isKeyword: Bool
  public let requiresLeadingSpace: Bool
  public let requiresTrailingSpace: Bool

  public init(name: String, kind: String, serializationCode: Int, unprefixedKind: String?, text: String, classification: String?, isKeyword:Bool, requiresLeadingSpace: Bool, requiresTrailingSpace: Bool) {
    self.name = name
    self.kind = kind
    self.serializationCode = serializationCode
    self.unprefixedKind = unprefixedKind
    self.text = text
    self.classification = classification
    self.isKeyword = isKeyword
    self.requiresLeadingSpace = requiresLeadingSpace
    self.requiresTrailingSpace = requiresTrailingSpace
  }
}


let SYNTAX_TOKENS: [Token] = [
  DeclKeyword()
  DeclKeyword()
  DeclKeyword()
  DeclKeyword()
  DeclKeyword()
  DeclKeyword()
  DeclKeyword()
  DeclKeyword()
  DeclKeyword()
  DeclKeyword()
  DeclKeyword()
  DeclKeyword()
  DeclKeyword()
  DeclKeyword()
  DeclKeyword()
  DeclKeyword()
  DeclKeyword()
  DeclKeyword()
  DeclKeyword()
  DeclKeyword()
  DeclKeyword()
  DeclKeyword()
  StmtKeyword()
  StmtKeyword()
  StmtKeyword()
  StmtKeyword()
  StmtKeyword()
  StmtKeyword()
  StmtKeyword()
  StmtKeyword()
  StmtKeyword()
  StmtKeyword()
  StmtKeyword()
  StmtKeyword()
  StmtKeyword()
  StmtKeyword()
  StmtKeyword()
  StmtKeyword()
  StmtKeyword()
  StmtKeyword()
  StmtKeyword()
  ExprKeyword()
  ExprKeyword()
  ExprKeyword()
  ExprKeyword()
  ExprKeyword()
  ExprKeyword()
  ExprKeyword()
  ExprKeyword()
  ExprKeyword()
  ExprKeyword()
  ExprKeyword()
  ExprKeyword()
  Keyword()
  Keyword()
  Keyword()
  Keyword()
  Keyword()
  PatternKeyword()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  Punctuator()
  PoundKeyword()
  PoundKeyword()
  PoundKeyword()
  PoundKeyword()
  PoundKeyword()
  PoundKeyword()
  PoundKeyword()
  PoundKeyword()
  PoundKeyword()
  PoundKeyword()
  PoundDirectiveKeyword()
  PoundDirectiveKeyword()
  PoundDirectiveKeyword()
  PoundConditionalDirectiveKeyword()
  PoundConditionalDirectiveKeyword()
  PoundConditionalDirectiveKeyword()
  PoundConditionalDirectiveKeyword()
  PoundConfig()
  PoundConfig()
  PoundObjectLiteral()
  PoundObjectLiteral()
  PoundObjectLiteral()
  Literal()
  Literal()
  Literal()
  Literal()
  Misc()
  Misc()
  Misc()
  Misc()
  Misc()
  Misc()
  Misc()
  Misc()
  Misc()
  Misc()
  Misc()
  Misc()
]
