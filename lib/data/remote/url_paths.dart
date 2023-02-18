import 'package:flutter_omni_test/settings/config.dart';
import 'package:flutter_omni_test/settings/enviroment.dart';

class UrlPaths {
  UrlPaths._();

  static get host {
    switch (Config.environment) {
      case Environment.production:
        return productionHost;
      case Environment.staging:
        return stagingHost;
      case Environment.qa:
        return qaHost;
      case Environment.manual:
        return manualHost;
      default:
        return developHost;
    }
  }

  static String productionHost = "";
  static const stagingHost = "";
  static const qaHost = "jsonplaceholder.typicode.com";
  static const developHost = "";
  static String manualHost = "";

  static String getPhotos() => '/photos';
}
