import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Core/utils/assets.dart';

// ignore: camel_case_types
class customAppBar extends StatelessWidget {
  const customAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 38.0),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 20),
          const Spacer(),
          const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 22,
          ),
        ],
      ),
    );
  }
}
