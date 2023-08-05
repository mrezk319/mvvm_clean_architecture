import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/custome_list_view_item.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/rate_row.dart';

import '../../../../../Core/utils/styles.dart';
import '../../../../../constants.dart';
import 'custom_app_bar_book_details.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTopAppBar, left: 30, right: 30),
      child: Column(
        children: [
          const CustomAppBarBookDetailsScreen(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * 0.15),
            child: const CustomListViewItem(),
          ),
          const SizedBox(height: 43),
          const Text(
            "The Junk Book",
            style: Styles.textStyle30,
          ),
          const SizedBox(height: 6),
          Opacity(
            opacity: .7,
            child: Text(
              "Rudyard Kipling",
              style: Styles.textStyle18.copyWith(
                  fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(height: 6),
          RateRow(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}
