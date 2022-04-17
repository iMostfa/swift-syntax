## Building SwiftSyntaxBuilderGeneration Using SwiftPM and ArgumentParser
<br>
Hi, Swift Community ! 

This’s Mostfa, in this repo i’m demonstrating how we can build SwiftSyntaxBuilderGeneration using SwiftPM, as a part of the transition from GYB and python based generation, to swift’s one.

i was trying to implement this part of @ahoppen at [Swift’s Forum](https://forums.swift.org/t/gsoc-2022-use-swiftsyntax-itself-to-generate-swiftsyntax-s-source-code-instead-of-gyb/56631/4)

> That module could then be compiled using SwiftPM into an executable `generate-swift-syntax-builder` that, when run, generates source code and writes it into the `SwiftSyntaxBuilder` module.
> 

building on the work done by [@kimdv #381](https://github.com/kimdv/swift-syntax/tree/kimdv/SwiftSyntaxBuilderGeneration)

currently, the files were generting by calling the following at build-script.py

```python
generate_gyb_files_helper(
SWIFTSYNTAXBUILDERGENERATION_DIR,
swiftsyntaxparser_destination,
gyb_exec,
add_source_locations,
verbose
```

my addition aims to make the build process starts from 
```SwiftSyntaxBuilderGeneration```

### The Goal
is starting code generation process by calling the following
<br>
```zsh
swift run SwiftSyntaxBuilderGeneration --toolchain /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr
```

### Implemention Details
<br>
i've started with adding ```swift-argument-parser``` to ```Package.swift```
then at ```SwiftSyntaxBuilderGeneration.swift```

```swift
import Foundation
import ArgumentParser

@available(macOS 10.13, *)
@main
struct SwiftSyntaxBuilderGeneration: ParsableCommand {
  
  //we can support @option for python path.
  @Option(help: "toolchain of swift using in compilation")
  
  //TODO: - Support other options
  var toolchain: URL // <- Supporting toolchain which will be passed to python script
  
  mutating func run() throws {
    
    let packagePath = getPackagePath() // <- Gets the current Directory of workspace # ../swift-syntax/
    guard let packagePath = packagePath,
          let pythonPath = PYTHON_PATH // <- returns URL(fileURLWithPath: "/usr/bin/python"),
                                       // and we might enable it as an option to passed just like the toolchain.
    else {
      return
    }
    
    // just like calling: python swift-syntax/build-script.py
    let arguments: [String] = [
      "\(packagePath.absoluteString)build-script.py",
      "--toolchain",
      "\(toolchain.absoluteString)"
    ]
    
    // calling the full command with the passed variables
    try Process.run(pythonPath,
                    arguments: arguments
                    , terminationHandler: nil)
    .run()
  } 
}
```
<br>
this implemention works as an wrapper around the currnet build-script.py, but i think it's important to start working on this and preparing for the trainsition to SwiftPM building system

when 
```zsh
swift run SwiftSyntaxBuilderGeneration --toolchain ../Toolchains/XcodeDefault.xctoolchain/usr
``` 
is called generating of GYB files starts as implemented. 

### Future Improvements
<br>
* using SwiftPM we can decouple the usage of pyhon script for building as much as possible 
* we can suuport more ```@Option```s and arguments


Thank you, please let me know what do you think about my thoguhts about this topic 
i'm working on this as a part of my [GSoC Proposal](https://forums.swift.org/t/gsoc-2022-use-swiftsyntax-itself-to-generate-swiftsyntax-s-source-code-instead-of-gyb/56631) and i'm willing to learn more and continue working on it !

Greetings, Mostfa.
