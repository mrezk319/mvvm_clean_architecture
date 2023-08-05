import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_clean_arch/Core/utils/app_routes.dart';
import 'package:mvvm_clean_arch/Core/utils/styles.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/rate_row.dart';

import '../../../../../Core/utils/assets.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.homeDetailsRoute);
      },
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.15,
            child: AspectRatio(
              aspectRatio: 1.2 / 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AssetsData.testImage),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  child: const Text("Harry Potter and the Goblet of Fire",
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis),
                ),
                const SizedBox(height: 3),
                const Text(
                  "J.K Rowling",
                  style: Styles.textStyle14,
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      "9.88",
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    RateRow(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
