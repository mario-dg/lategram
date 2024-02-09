import 'package:flutter/material.dart';
import 'dart:io' show Platform;

abstract class PlatformAwareWidget<I extends Widget, A extends Widget>
    extends StatelessWidget {
  const PlatformAwareWidget({super.key});

  I buildIosWidget(BuildContext context);
  A buildAndroidWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return buildIosWidget(context);
    } else if (Platform.isAndroid) {
      return buildAndroidWidget(context);
    }

    // Platform not supported
    return Container();
  }
}
