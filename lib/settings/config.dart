import 'package:flutter/material.dart';
import 'package:flutter_omni_test/generated/l10n.dart';
import 'package:flutter_omni_test/settings/enviroment.dart';

class Config {
  Config._();

  static String version = "";

  static Environment environment = Environment.production;

  static EdgeInsetsGeometry defaultPadding = const EdgeInsets.all(16.0);
  static EdgeInsetsGeometry defaultMargin = const EdgeInsets.all(8.0);
}

S get labels => S.current;
