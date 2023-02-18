import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_omni_test/data/remote/networking/layers/network_connectivity.dart';
import 'package:flutter_omni_test/data/remote/networking/layers/network_creator.dart';
import 'package:flutter_omni_test/data/remote/networking/layers/network_decoder.dart';
import 'package:flutter_omni_test/data/remote/networking/layers/network_executor.dart';
import 'package:flutter_omni_test/data/remote/providers/main_api_provider.dart';
import 'package:flutter_omni_test/data/repository/main/main_repository.dart';
import 'package:flutter_omni_test/data/repository/main/main_repository_impl.dart';
import 'package:flutter_omni_test/settings/o_navigator.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

final getIt = GetIt.instance;

setupDependencyInjection() {
  getIt.registerSingleton<ONavigator>(ONavigator());
  getIt.registerSingleton<Logger>(Logger());

  final networkCreator = NetworkCreator();
  final networkDecoder = NetworkDecoder();
  final connectivity = Connectivity();
  final networkConnectivity = NetworkConnectivity(connectivity);

  final networkExecutor =
      NetworkExecutor(networkCreator, networkDecoder, networkConnectivity);

  final userApiProvider = MainApiProvider(networkExecutor);
  final userRepository = MainRepositoryImpl(userApiProvider);

  getIt.registerSingleton<NetworkExecutor>(networkExecutor);
  getIt.registerSingleton<MainRepository>(userRepository);
}
