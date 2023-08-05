import 'package:flutter/material.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/best_seller_list_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, i) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: BestSellerListItem(),
        ),
        itemCount: 5,
      ),
    );
  }
}
