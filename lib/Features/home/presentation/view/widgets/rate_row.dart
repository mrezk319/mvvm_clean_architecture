import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Core/utils/styles.dart';

class RateRow extends StatelessWidget {
  RateRow({super.key, this.mainAxisAlignment = MainAxisAlignment.end});
  MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 16,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(width: 5),
        Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        SizedBox(width: 5),
        Text(
          "(2456)",
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
