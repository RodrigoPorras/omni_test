import 'package:flutter/services.dart';
import 'package:flutter_omni_test/colors/o_colors.dart';
import 'package:flutter_omni_test/generated/l10n.dart';
import 'package:flutter_omni_test/routes/app_routes.dart';
import 'package:flutter_omni_test/screens/start/views/start_ui.dart';
import 'package:flutter_omni_test/settings/blocs_provider.dart';
import 'package:flutter_omni_test/settings/o_navigator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: OColors.primaryLightColor,
      statusBarIconBrightness: Brightness.dark,
    ));

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MultiBlocProvider(
      providers: blocs,
      child: MaterialApp(
        title: 'Omni Pro',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: OColors.primaryLightColor),
          textTheme: GoogleFonts.openSansTextTheme(
            Theme.of(context).textTheme,
          ),
          colorScheme: ColorScheme.fromSwatch(
            accentColor: OColors.primaryLightColor,
          ),
        ),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        routes: routes,
        initialRoute: StartUI.path,
        navigatorKey: oNavigator.appNavigatorStateKey,
      ),
    );
  }
}
