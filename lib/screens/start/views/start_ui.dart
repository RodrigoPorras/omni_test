import 'package:flutter/material.dart';
import 'package:flutter_omni_test/screens/dashboard/dashboard.dart';
import 'package:flutter_omni_test/screens/start/bloc/auth_bloc.dart';
import 'package:flutter_omni_test/settings/config.dart';
import 'package:flutter_omni_test/settings/o_navigator.dart';
import 'package:flutter_omni_test/styles/r_text_styles.dart';
import 'package:flutter_omni_test/widgets/logo_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartUI extends StatelessWidget {
  static const path = '/';
  const StartUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is GoToDashboard) {
          oNavigator.offNamed(context, page: DashboardUI.path);
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: _getBody(state),
          ),
        );
      },
    );
  }

  Widget _getBody(AuthState state) {
    if (state is ShowSplashScreenState) {
      return Padding(
        padding: Config.defaultPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: LogoWidget(),
            ),
            Text(
              labels.start_title,
              style: RTextStyles.bold(),
            ),
          ],
        ),
      );
    }
    return Container();
  }
}
