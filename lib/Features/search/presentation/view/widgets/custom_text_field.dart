import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mvvm_clean_arch/Features/search/presentation/view_model/cubit/search_cubit.dart';

import '../../../../../Core/utils/styles.dart';
import '../../../../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: paddingTopAppBar),
      child: TextFormField(
        onChanged: (String input) {
          BlocProvider.of<SearchCubitCubit>(context)
              .getSearchBooks(search: input);
        },
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
}

OutlineInputBorder customOutlinedBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(color: Colors.white),
  );
}
