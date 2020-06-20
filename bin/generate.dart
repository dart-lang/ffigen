// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Executable script to be called by user to generate bindings for some C library
import 'dart:io';

import 'package:args/args.dart';
import 'package:ffigen/src/config_provider.dart';
import 'package:ffigen/src/header_parser.dart' as parser;
import 'package:logging/logging.dart';
import 'package:yaml/yaml.dart' as yaml;

var _logger = Logger('generate.dart');

void main(List<String> args) {
  // parser the cmd Args.
  var result = getArgResults(args);

  // setup logging level and printing.
  setupLogger(result);

  // create config object.
  var config = getConfig(result);

  // parse the bindings according to config object provided.
  final library = parser.parse(config);

  if (config.sort) {
    library.sort();
  }

  // Generate file for the parsed bindings.
  var gen = File(config.output);
  library.generateFile(gen);
  _logger.info('Finished, Bindings generated in ${gen?.absolute?.path}');
}

Config getConfig(ArgResults result) {
  var currentDir = Directory.current;
  _logger.info('Running in ${currentDir}');

  if (result.wasParsed('config')) {
    return getConfigFromCustomYaml(result['config'] as String);
  } else {
    return getConfigFromPubspec();
  }
}

/// Extracts configuration from pubspec file
Config getConfigFromPubspec() {
  var pubspecName = 'pubspec.yaml';
  var configKey = 'ffigen';

  var pubspecFile = File(pubspecName);

  if (!pubspecFile.existsSync()) {
    _logger.severe(
        'Error: $pubspecName not found, please run this tool from the root of your package');
    exit(1);
  }

  // Casting this because pubspec is expected to be a YamlMap.

  // can throw YamlException() if unable to parse
  var bindingsConfigMap =
      yaml.loadYaml(pubspecFile.readAsStringSync())[configKey] as yaml.YamlMap;

  if (bindingsConfigMap == null) {
    _logger.severe("Couldn't find an entry for $configKey in pubspec.yaml");
    exit(1);
  }
  return Config.fromYaml(bindingsConfigMap);
}

/// Extracts configuration from a custom yaml file.
Config getConfigFromCustomYaml(String yamlPath) {
  var yamlFile = File(yamlPath);

  if (!yamlFile.existsSync()) {
    _logger.severe(
        'Error: $yamlPath not found, please run this tool from the root of your package');
    exit(1);
  }

  // Casting this because pubspec is expected to be a YamlMap.

  // can throw YamlException() if unable to parse
  var bindingsConfigMap =
      yaml.loadYaml(yamlFile.readAsStringSync()) as yaml.YamlMap;

  return Config.fromYaml(bindingsConfigMap);
}

/// Parse cmd line arguments.
ArgResults getArgResults(List<String> args) {
  var parser = ArgParser(allowTrailingOptions: true);

  parser.addSeparator(
      'FFIGEN: Generate dart bindings from C header files\nUsage:');
  parser.addOption(
    'config',
    help: 'path to Yaml file containing configurations if not in pubspec.yaml',
  );
  parser.addOption(
    'verbose',
    abbr: 'v',
    defaultsTo: 'info',
    allowed: [
      'all',
      'fine',
      'info',
      'warning',
      'severe',
    ],
  );
  parser.addFlag(
    'help',
    abbr: 'h',
    help: 'prints this usage',
    negatable: false,
  );

  ArgResults results;
  try {
    results = parser.parse(args);

    if (results.wasParsed('help')) {
      print(parser.usage);
      exit(0);
    }
  } catch (e) {
    print(e);
    print(parser.usage);
    exit(1);
  }

  return results;
}

/// Setup logging level and printing.
void setupLogger(ArgResults result) {
  if (result.wasParsed('verbose')) {
    switch (result['verbose'] as String) {
      case 'all':
        // logs everything, entire AST touched by our parser.
        Logger.root.level = Level.ALL;
        break;
      case 'fine':
        // logs AST parts relevant to user (i.e included in filter).
        Logger.root.level = Level.FINE;
        break;
      case 'info':
        // logs relevant info for general user (default).
        Logger.root.level = Level.INFO;
        break;
      case 'warning':
        // logs warnings for relevant stuff.
        Logger.root.level = Level.WARNING;
        break;
      case 'severe':
        // logs severe warnings and errors.
        Logger.root.level = Level.SEVERE;
        break;
    }
    // setup logger for printing (if verbosity was set by user).
    Logger.root.onRecord.listen((record) {
      print('${record.level.name.padRight(8)}: ${record.message}');
    });
  } else {
    // setup logger for printing (if verbosity was not set by user).
    Logger.root.onRecord.listen((record) {
      if (record.level.value > Level.INFO.value) {
        print('  ${record.level.name.padRight(8)}: ${record.message}');
      } else {
        print(record.message);
      }
    });
  }
}
