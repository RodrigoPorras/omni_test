import 'package:flutter_omni_test/settings/dependency_inyection.dart';
import 'package:logger/logger.dart';

class Log {
  static Logger get to => getIt.get<Logger>();
}
