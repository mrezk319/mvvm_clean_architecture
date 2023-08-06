import 'package:dartz/dartz.dart';
import 'package:mvvm_clean_arch/Core/errors/errors.dart';
import 'package:mvvm_clean_arch/Features/home/data/models/book_model/book_model.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> getSearchedBooks(
      {required String search});
}
