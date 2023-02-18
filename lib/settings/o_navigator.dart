import 'package:flutter/material.dart';
import 'package:flutter_omni_test/settings/dependency_inyection.dart';

class ONavigator {
  GlobalKey<NavigatorState> appNavigatorStateKey = GlobalKey<NavigatorState>();

  List<GlobalKey<NavigatorState>> navigatorStateKeys =
      List.generate(2, (index) => GlobalKey<NavigatorState>());

  GlobalKey<NavigatorState>? currentNavigatorStateKey;

  Future<dynamic>? toNamed(
    BuildContext context, {
    required String page,
    dynamic arguments,
    bool rootNavigator = false,
  }) {
    return Navigator.of(context, rootNavigator: rootNavigator)
        .pushNamed(page, arguments: arguments);
  }

  Future<dynamic>? offNamed(
    BuildContext context, {
    required String page,
    dynamic arguments,
    GlobalKey<NavigatorState>? navKey,
  }) {
    return Navigator.of(context, rootNavigator: true).pushReplacementNamed(
      page,
      arguments: arguments,
    );
  }

  void back<T>(
    BuildContext context, {
    T? result,
    bool canPop = true,
    GlobalKey<NavigatorState>? navKey,
  }) {
    Navigator.of(context).pop(result);
  }

  bool canPop(BuildContext context) {
    return Navigator.of(context).canPop();
  }
}

ONavigator get oNavigator => getIt.get<ONavigator>();
