import 'package:flutter/material.dart';

import '../../../../../Core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5 / 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetsData.testImage), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
