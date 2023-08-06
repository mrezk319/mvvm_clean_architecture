import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mvvm_clean_arch/Features/home/data/models/book_model/book_model.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/featured_books_list_view.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/custom_similar_list_view.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/feature_book_list_view_item.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/free_or_pay.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/rate_row.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view_model/similar_books/similar_books_cubit.dart';

import '../../../../../Core/utils/assets.dart';
import '../../../../../Core/utils/styles.dart';
import '../../../../../constants.dart';
import 'custom_app_bar_book_details.dart';

class BookDetailsBody extends StatefulWidget {
  BookDetailsBody({super.key, required this.bookModel});
  BookModel bookModel;
  @override
  State<BookDetailsBody> createState() => _BookDetailsBodyState();
}

class _BookDetailsBodyState extends State<BookDetailsBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context)
        .getSimilarBooks(category: widget.bookModel.volumeInfo!.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
                top: paddingTopAppBar, left: 30, right: 30),
            child: Column(
              children: [
                const CustomAppBarBookDetailsScreen(),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.sizeOf(context).width * 0.15),
                  child: CustomListViewItem(
                      imgUrl: widget.bookModel.volumeInfo!.imageLinks!.thumbnail
                          .toString()),
                ),
                const SizedBox(height: 43),
                Text(
                  widget.bookModel.volumeInfo!.title.toString(),
                  textAlign: TextAlign.center,
                  style: Styles.textStyle30,
                ),
                const SizedBox(height: 6),
                Opacity(
                  opacity: .7,
                  child: Text(
                    widget.bookModel.volumeInfo!.authors == null
                        ? ""
                        : widget.bookModel.volumeInfo!.authors!.first
                            .toString(),
                    style: Styles.textStyle18.copyWith(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                const SizedBox(height: 6),
                RateRow(
                  mainAxisAlignment: MainAxisAlignment.center,
                  count: widget.bookModel.volumeInfo!.ratingsCount ?? 0,
                  rate: widget.bookModel.volumeInfo!.averageRating == null
                      ? 0
                      : widget.bookModel.volumeInfo!.averageRating!.toDouble(),
                ),
                const SizedBox(height: 20),
                FreeOrPay(bookModel: widget.bookModel),
                const SizedBox(height: 20),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "You can also like",
                    style: Styles.textStyle14
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(height: 10),
                const CustomSimilarListView(),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
