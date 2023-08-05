import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mvvm_clean_arch/Core/utils/assets.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/best_seller_list_item.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/custom_list_view.dart';

import '../../../../../Core/utils/styles.dart';
import 'custom_app_bar.dart';
import 'custome_list_view_item.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              customAppBar(),
              SizedBox(height: 15),
              CustomListView(),
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
          child: BestSellerListView(),
        )
      ],
    );
  }
}
