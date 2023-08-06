import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/utils/styles.dart';
import '../../../../../Core/widgets/custom_error_widget.dart';
import '../../../../../Core/widgets/custom_loading_indicator.dart';
import '../../../../home/presentation/view/widgets/new_book_list_item.dart';
import '../../view_model/cubit/search_cubit.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubitCubit, SearchCubitState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemBuilder: (context, i) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: BestSellerListItem(
                  book: state.books[i],
                ),
              ),
              itemCount: state.books.length,
            ),
          );
        } else if (state is SearchBooksFail) {
          return CustomErrorWidget(errMessage: state.errMess);
        } else if (state is SearchBooksLoading) {
          return const CustomLoadingIndicator();
        } else {
          return const Center(
            child: Text("Are you looking for something?",
                style: Styles.textStyle20),
          );
        }
      },
    );
  }
}
