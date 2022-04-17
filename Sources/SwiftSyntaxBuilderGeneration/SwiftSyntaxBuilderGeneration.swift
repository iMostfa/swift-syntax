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

import Foundation
import ArgumentParser


@available(macOS 10.13, *)
@main
struct SwiftSyntaxBuilderGeneration: ParsableCommand {
  
  //we can support @option for python path.
  @Option(help: "toolchain of swift using in compilation")
  var toolchain: URL
  
  
  
  mutating func run() throws {
    
    let packagePath = getPackagePath()
    guard let packagePath = packagePath, let pythonPath = PYTHON_PATH else {
      return
    }
    
    
    let arguments: [String] = [
      "\(packagePath.absoluteString)build-script.py",
      "--toolchain",
      "\(toolchain.absoluteString)"
    ]
    
    try Process.run(pythonPath,
                    arguments: arguments
                    , terminationHandler: nil)
    .run()
    
    
    
    
    
  }
  
}

@available(macOS 10.13, *)
extension SwiftSyntaxBuilderGeneration {
  
  var PYTHON_PATH: URL? {
    return URL(fileURLWithPath: "/usr/bin/python")
  }
  
  func getPackagePath() -> URL? {
    guard let path = Bundle.main.resourcePath else {
      assertionFailure("Can't get bundle path")
      return  nil
      
    }
    return URL(string: path)?
      .deletingLastPathComponent()
      .deletingLastPathComponent()
      .deletingLastPathComponent()
  }
}

//MARK: - URL Conformance to ExpressibleByArgument
extension URL: ExpressibleByArgument {
  public init?(argument: String) {
    self.init(string: argument)
  }
}
