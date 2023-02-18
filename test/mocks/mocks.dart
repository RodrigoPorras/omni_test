import 'package:flutter_omni_test/data/repository/main/main_repository.dart';
import 'package:flutter_omni_test/data/repository/main/main_repository_impl.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(
  [
    MainRepositoryImpl,
  ],
  customMocks: [
    MockSpec<MainRepository>(onMissingStub: OnMissingStub.returnDefault)
  ],
)
void main() {}
