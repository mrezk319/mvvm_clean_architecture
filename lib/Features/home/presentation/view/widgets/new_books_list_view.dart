import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_clean_arch/Core/widgets/custom_error_widget.dart';
import 'package:mvvm_clean_arch/Core/widgets/custom_loading_indicator.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/new_book_list_item.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view_model/newest_books/cubit/newest_books_cubit.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, i) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: BestSellerListItem(book: state.books[i]),
              ),
              itemCount: state.books.length,
            ),
          );
        } else if (state is NewestBooksFail) {
          return CustomErrorWidget(errMessage: state.errMess);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
