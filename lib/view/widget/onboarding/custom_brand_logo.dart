
import 'package:flutter/material.dart';
import '../../../core/constant/image_assets.dart';
import '../../../core/constant/values/strings.dart';

class CustomBrandLogo extends StatelessWidget{
  const CustomBrandLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        width: 240.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          textDirection: TextDirection.values.first,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              AppImageAsset.iconLogo,
              alignment: Alignment.topLeft,
              height: 32.0,
              width: 48.0,
              fit: BoxFit.cover,
            ),
            Text(Strings.headLogo,textAlign: TextAlign.start,
                style:  Theme.of(context).textTheme.displayLarge),
            const SizedBox(
              height: 2.0,
            ),
            Text(Strings.subLogo,
                style:  Theme.of(context).textTheme.displaySmall),
          ],
        ));
  }
}