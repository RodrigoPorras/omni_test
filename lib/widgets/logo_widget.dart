import 'package:flutter/material.dart';
import 'package:flutter_omni_test/gen/assets.gen.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Assets.images.omniLogo.image()],
    );
  }
}
