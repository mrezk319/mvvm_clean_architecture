import 'package:flutter/material.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/book_details_body_screen.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const BookDetailsBody(),
    );
  }
}
