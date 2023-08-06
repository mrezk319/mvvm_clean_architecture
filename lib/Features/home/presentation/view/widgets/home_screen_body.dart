import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mvvm_clean_arch/Core/utils/assets.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/new_book_list_item.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/new_books_list_view.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/featured_books_list_view.dart';

import '../../../../../Core/utils/styles.dart';
import 'custom_app_bar.dart';
import 'feature_book_list_view_item.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              customAppBar(),
              SizedBox(height: 15),
              FeaturedListView(),
              SizedBox(height: 15),
              SizedBox(height: 15),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Best Seller",
                      style: Styles.textStyle18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
        SliverFillRemaining(
          child: NewestBooksListView(),
        )
      ],
    );
  }
}
