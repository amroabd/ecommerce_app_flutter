import 'package:flutter/cupertino.dart';

import '../../../core/constant/image_assets.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Image.asset(
      AppImageAsset.iconLogo,
      alignment: Alignment.center,
      height: 100.0,
      width: 100.0,
      fit: BoxFit.contain,
    );
  }
}
