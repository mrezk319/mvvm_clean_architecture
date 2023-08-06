import 'package:flutter/material.dart';
import 'package:mvvm_clean_arch/Features/home/data/models/book_model/book_model.dart';
import 'package:mvvm_clean_arch/Features/home/presentation/view/widgets/book_details_body_screen.dart';

class BookDetailsScreen extends StatelessWidget {
  BookDetailsScreen({super.key, required this.bookModel});
  BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsBody(bookModel: this.bookModel),
    );
  }
}
