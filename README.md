# flutter_omni_test

Flutter version 3.0.4

contains:

- Clean Network layer 
- BLOC as a state managment 
- Testing examples using BLOC and how to generate coverage files
- Internationalization 
- Bottom navigation bar using nested navigation

## FVM (Flutter Version Management) Install
Execute command: dart pub global activate fvm
Then inside project folder: fvm use {flutter_version} Example: fvm use 3.0.1
Then file named ".fvm/fvm_config.json" is created to specify the current Flutter version used by the FVM (Flutter Version Manager). The FVM is used to have multiple versions of flutter in a single PC. This was added to manage more easily in our machines, other projects with different.
To change flutter version in current visual studio project: fvm use {flutter_version}
To use any flutter command with that version: fvm {flutter_command} Ex: fvm flutter build appbundle

## VSCODE config
Go to setting CMD + , on mac and ctrl + ,  or find settings.json 
Add line "dart.flutterSdkPath": ".fvm/flutter_sdk" to settings.json

or just run using Flutter version 3.0.4


## Testing
VSCODE test coverage plugin (to see current test coverage): https://marketplace.visualstudio.com/items?itemName=Flutterando.flutter-coverage

for current coverage execute:

fvm flutter test --coverage 

remove non neccessary file test:

- lcov --remove coverage/lcov.info 'lib/colors/*' 'lib/styles/*' 'lib/widgets/*' 'lib/data/*' 'lib/error/*' 'lib/extensions/*' 'lib/settings/*'  'lib/utils/default_dialog.dart' 'lib/utils/dio/*' 'lib/utils/logger.dart' -o coverage/lcov.info

## Build runner command 
flutter pub run build_runner build --delete-conflicting-outputs 
or 
fvm flutter pub run build_runner build --delete-conflicting-outputs