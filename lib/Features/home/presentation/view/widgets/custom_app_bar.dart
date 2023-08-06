import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_clean_arch/Core/utils/app_routes.dart';

import '../../../../../Core/utils/assets.dart';

// ignore: camel_case_types
class customAppBar extends StatelessWidget {
  const customAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 38.0, left: 8, right: 8),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 20),
          const Spacer(),
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
            onPressed: () {
              GoRouter.of(context).push(AppRoutes.searchScreenRoute);
            },
          ),
        ],
      ),
    );
  }
}
