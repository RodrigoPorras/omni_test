import 'package:flutter/material.dart';
import 'package:flutter_omni_test/colors/o_colors.dart';
import 'package:flutter_omni_test/gen/assets.gen.dart';
import 'package:flutter_omni_test/routes/app_routes.dart';
import 'package:flutter_omni_test/screens/about_me/views/about_ui.dart';
import 'package:flutter_omni_test/screens/dashboard/dashboard.dart';
import 'package:flutter_omni_test/screens/home/views/home_ui.dart';
import 'package:flutter_omni_test/settings/config.dart';
import 'package:flutter_omni_test/settings/o_navigator.dart';
import 'package:flutter_omni_test/utils/default_dialog.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardUI extends StatelessWidget {
  static const String path = "/dashboard";

  const DashboardUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> allDashboardPages = [
      _getNavigator(
        initialPage: HomeUI(),
        navigatorKey: oNavigator.navigatorStateKeys[0],
      ),
      _getNavigator(
        initialPage: AboutMeUI(),
        navigatorKey: oNavigator.navigatorStateKeys[1],
      ),
    ];

    return WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: _buildBottomNavigationBar(),
        body: SafeArea(
          child: BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
              return IndexedStack(
                index: state.currentIndexBnb,
                children: allDashboardPages,
              );
            },
          ),
        ),
      ),
    );
  }

  _getNavigator({
    required Widget initialPage,
    required GlobalKey<NavigatorState> navigatorKey,
    List<NavigatorObserver> observers = const <NavigatorObserver>[],
  }) {
    return Navigator(
      key: navigatorKey,
      observers: observers,
      onGenerateRoute: (settings) {
        late Widget Function(BuildContext) newPage;

        if (settings.name == '/') {
          newPage = (BuildContext context) => initialPage;
        } else {
          newPage = routes.entries
              .firstWhere((page) => page.key == settings.name)
              .value;
        }

        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return newPage(context);
          },
        );
      },
    );
  }

  Widget _buildBottomNavigationBar() {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return BottomNavigationBar(
          showUnselectedLabels: true,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              activeIcon: Assets.svg.bnbHome.svg(color: OColors.primary),
              icon: Assets.svg.bnbHome.svg(color: OColors.unselected),
              label: labels.bnb_home,
            ),
            BottomNavigationBarItem(
              activeIcon: Assets.svg.bnbProfile.svg(color: OColors.primary),
              icon:
                  Assets.svg.bnbProfile.svg(color: OColors.unselected),
              label: labels.bnb_about,
            ),
          ],
          currentIndex: state.currentIndexBnb,
          selectedItemColor: OColors.primary,
          unselectedItemColor: OColors.unselected,
          onTap: (index) => context
              .read<DashboardBloc>()
              .add(DashboardChangedIndexBnbEvent(newIndex: index)),
        );
      },
    );
  }

  Future<bool> _onWillPop(BuildContext context) async {
    if (oNavigator
        .canPop(oNavigator.currentNavigatorStateKey!.currentContext!)) {
      oNavigator.back(oNavigator.currentNavigatorStateKey!.currentContext!);
      return false;
    } else {
      final result = await showDefaultDialog(
        title: labels.exit,
        message: labels.close_app,
        textAccept: labels.no,
        textAction: labels.yes,
        onCancel: () {
          oNavigator.back(context, result: false);
        },
        onAction: () {
          oNavigator.back(context, result: true);
        },
      );
      return result;
    }
  }
}
