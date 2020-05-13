[![Build Status](https://travis-ci.org/dart-lang/ffigen.svg?branch=master)](https://travis-ci.org/dart-lang/ffigen)

Experimental generator for [FFI](https://dart.dev/guides/libraries/c-interop)
bindings.

> Work in progress..

## Using this package - 
- Add as dependency (can be a dev_dependency)
- Configurations must be provided in the pubspec.yaml file under the key `ffigen`
- Run from root of project - `pub run ffigen:generate`

## Project Structure -

- `bin` - Contains generate.dart script which end user will execute
- `lib` - Contains code that will parse the C header files (LibClang bindings and AST interface)
- `tool` - Contains script to generate LibClang bindings using FFI tool (dev use only).
- `example` - Project to demostrate generatiion of bindings for given C header files.

- `lib/src/code_generator` - Generates Binding Files
- `lib/src/config_provider` - Holds configurations to be passed to other modules
- `lib/src/code_generator` - Clang Bindings, created using code_generator
- `lib/src/header_parser` - Parses header files, utilises clang_bindings

## Building -
A dynamic library for a wrapper to libclang needs to be generated as it is used by parser

### Steps (should work for ubuntu/linux)-
1. Install libclangdev - `sudo apt-get install libclang-dev`
2. Add its C headers to your include path (so clang compiler can detect it), you can create a symlink to those files like this -
 `ln -s /usr/lib/llvm-10/include/clang-c/ /usr/include/`

3. cd to root of this package, then run the `build.sh` script
