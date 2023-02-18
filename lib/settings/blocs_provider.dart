import 'package:flutter_omni_test/screens/dashboard/bloc/dashboard_bloc.dart';
import 'package:flutter_omni_test/screens/start/bloc/auth_bloc.dart';

// ignore: implementation_imports
import 'package:flutter_bloc/src/bloc_provider.dart';

final blocs = <BlocProviderSingleChildWidget>[
  BlocProvider(
    create: (_) => AuthBloc()..add(AuthStartedEvent()),
  ),
  BlocProvider(create: (_) => DashboardBloc()),
];
