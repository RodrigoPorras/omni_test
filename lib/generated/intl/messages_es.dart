// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'es';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "bnb_about": MessageLookupByLibrary.simpleMessage("Sobre Mi"),
        "bnb_home": MessageLookupByLibrary.simpleMessage("Inicio"),
        "close_app": MessageLookupByLibrary.simpleMessage(
            "¿Desea cerrar la aplicación?"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "exit": MessageLookupByLibrary.simpleMessage("Salir"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "no_internet":
            MessageLookupByLibrary.simpleMessage("No hay conexión de internet"),
        "start_title": MessageLookupByLibrary.simpleMessage(
            "Omni Flutter Test made by Rodrigo Porras"),
        "yes": MessageLookupByLibrary.simpleMessage("Si")
      };
}
