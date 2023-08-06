import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mvvm_clean_arch/Core/utils/styles.dart';
import 'package:mvvm_clean_arch/Core/widgets/custom_error_widget.dart';
import 'package:mvvm_clean_arch/Core/widgets/custom_loading_indicator.dart';
import 'package:mvvm_clean_arch/Features/home/data/models/book_model/book_model.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/new_book_list_item.dart';
import 'package:mvvm_clean_arch/Features/search/presentation/view/widgets/search_result_list_view.dart';
import 'package:mvvm_clean_arch/Features/search/presentation/view_model/cubit/search_cubit.dart';

import '../../../../../constants.dart';
import 'custom_text_field.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          CustomTextField(),
          SizedBox(height: 15),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Search Result",
              style: Styles.textStyle18,
            ),
          ),
          SizedBox(height: 15),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
