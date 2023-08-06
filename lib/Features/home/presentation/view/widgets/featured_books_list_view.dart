import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_clean_arch/Core/widgets/custom_loading_indicator.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/feature_book_list_view_item.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view_model/featured_books/cubit/featured_books_cubit.dart';

import '../../../../../Core/utils/app_routes.dart';
import '../../../../../Core/widgets/custom_error_widget.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.3,
            child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRoutes.homeDetailsRoute,
                            extra: state.books[index]);
                      },
                      child: CustomListViewItem(
                          imgUrl: state
                              .books[index].volumeInfo!.imageLinks!.thumbnail
                              .toString()),
                    ),
                itemCount: state.books.length),
          );
        } else if (state is FeaturedBooksFail) {
          return CustomErrorWidget(errMessage: state.errMess);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
