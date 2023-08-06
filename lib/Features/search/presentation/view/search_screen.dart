import 'package:flutter/material.dart';
import 'package:mvvm_clean_arch/Features/search/presentation/view/widgets/search_body_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchBody(),
    );
  }
}
