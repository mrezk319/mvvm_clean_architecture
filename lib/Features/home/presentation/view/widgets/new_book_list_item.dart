import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_clean_arch/Core/utils/app_routes.dart';
import 'package:mvvm_clean_arch/Core/utils/styles.dart';
import 'package:mvvm_clean_arch/Features/home/data/models/book_model/book_model.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/feature_book_list_view_item.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/rate_row.dart';

import '../../../../../Core/utils/assets.dart';

// ignore: must_be_immutable
class BestSellerListItem extends StatelessWidget {
  BestSellerListItem({super.key, required this.book});
  BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.homeDetailsRoute);
      },
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.18,
            child: CustomListViewItem(
                imgUrl: book.volumeInfo!.imageLinks!.thumbnail.toString()),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  child: Text(book.volumeInfo!.title.toString(),
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis),
                ),
                const SizedBox(height: 3),
                Text(
                  book.volumeInfo!.authors!.first,
                  style: Styles.textStyle14,
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      "Free",
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    RateRow(
                      count: book.volumeInfo!.ratingsCount ?? 0,
                      rate: book.volumeInfo!.averageRating == null
                          ? 0
                          : book.volumeInfo!.averageRating!.toDouble(),
                    ),
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
