import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Core/utils/styles.dart';

class RateRow extends StatelessWidget {
  RateRow(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.end,
      this.rate = 0.0,
      this.count = 0});
  MainAxisAlignment mainAxisAlignment;
  double rate;
  int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 16,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(width: 5),
        Text(
          rate.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 5),
        Text(
          "($count)",
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
