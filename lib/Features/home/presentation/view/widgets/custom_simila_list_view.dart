import 'package:flutter/material.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/custome_list_view_item.dart';

class CustomSimilarListView extends StatelessWidget {
  const CustomSimilarListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.15,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemBuilder: (context, index) => const CustomListViewItem(),
          itemCount: 5),
    );
  }
}
