import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mvvm_clean_arch/Core/utils/styles.dart';
import 'package:mvvm_clean_arch/Features/home/data/models/book_model/book_model.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/new_book_list_item.dart';

import '../../../../../constants.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, i) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: BestSellerListItem(
            book: BookModel(),
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          customTextFormField(),
          const SizedBox(height: 15),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Search Result",
              style: Styles.textStyle18,
            ),
          ),
          const SizedBox(height: 15),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }

  Padding customTextFormField() {
    return Padding(
      padding: const EdgeInsets.only(top: paddingTopAppBar),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: Styles.textStyle14,
          focusedBorder: customOutlinedBorder(),
          suffixIcon: const Icon(FontAwesomeIcons.magnifyingGlass),
          border: customOutlinedBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder customOutlinedBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
