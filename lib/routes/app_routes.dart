import 'package:flutter/material.dart';
import 'package:flutter_omni_test/screens/about_me/views/about_ui.dart';
import 'package:flutter_omni_test/screens/dashboard/views/dashboard_ui.dart';
import 'package:flutter_omni_test/screens/start/views/start_ui.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  StartUI.path: (_) => const StartUI(),
  AboutMeUI.path: (_) => AboutMeUI(),
  DashboardUI.path: (_) => const DashboardUI(),
};
