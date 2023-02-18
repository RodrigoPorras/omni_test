import 'package:flutter/material.dart';
import 'package:flutter_omni_test/app/views/app.dart';
import 'package:flutter_omni_test/settings/config.dart';
import 'package:flutter_omni_test/settings/dependency_inyection.dart';
import 'package:flutter_omni_test/settings/enviroment.dart';
import 'package:flutter_omni_test/utils/observers/app_bloc_observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

void main() async {
  Config.environment = Environment.qa;

  await setupDependencyInjection();
  Bloc.observer = AppBlocObserver();

  runApp(const App());
  setVersion();
}

void setVersion() async {
  final info = await PackageInfo.fromPlatform();
  Config.version = "V.${info.version}+${info.buildNumber}";
}
