import 'package:meta/meta.dart';

import 'writer.dart';
import 'binding.dart';
import 'binding_string.dart';
import 'type.dart';

/// A binding for C function
class Func extends Binding {
  final Type returnType;
  final List<Parameter> parameters;

  Func({
    @required String name,
    String dartDoc,
    @required this.returnType,
    List<Parameter> parameters,
  })  : this.parameters = parameters ?? [],
        super(name: name, dartDoc: dartDoc) {
    for (var i = 0; i < this.parameters.length; i++) {
      if (this.parameters[i].name == null ||
          this.parameters[i].name.trim() == '') {
        this.parameters[i].name = "arg$i";
      }
    }
  }

  @override
  BindingString toBindingString(Writer w) {
    final s = StringBuffer();

    final funcVarName = '_$name';
    final typedefC = '_c_$name';
    final typedefDart = '_dart_$name';

    if (dartDoc != null) {
      s.write('/// ');
      s.writeAll(dartDoc.split('\n'), '\n/// ');
      s.write('\n');
    }

    // write enclosing function
    s.write('${returnType.dartType} $name(\n');
    for (var p in parameters) {
      s.write('  ${p.type.dartType} ${p.name},\n');
    }
    s.write(') {\n');
    s.write('  return $funcVarName(\n');
    for (var p in parameters) {
      s.write('    ${p.name},\n');
    }
    s.write('  );\n');
    s.write('}\n\n');

    // write function with dylib lookup
    s.write(
        "final $typedefDart $funcVarName = ${w.dylibIdentifier}.lookupFunction<$typedefC,$typedefDart>('$name');\n\n");

    // write typdef for C
    s.write('typedef $typedefC = ${returnType.cType} Function(\n');
    for (var p in parameters) {
      s.write('  ${p.type.cType} ${p.name},\n');
    }
    s.write(');\n\n');

    // write typdef for dart
    s.write('typedef $typedefDart = ${returnType.dartType} Function(\n');
    for (var p in parameters) {
      s.write('  ${p.type.dartType} ${p.name},\n');
    }
    s.write(');\n\n');

    return BindingString(type: BindingStringType.func, string: s.toString());
  }
}

class Parameter {
  String name;
  final Type type;

  Parameter({this.name, @required this.type});
}
