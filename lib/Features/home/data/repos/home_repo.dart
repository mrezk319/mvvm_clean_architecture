import 'package:dartz/dartz.dart';
import 'package:mvvm_clean_arch/Features/home/data/models/book_model/book_model.dart';

import '../../../../Core/errors/errors.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
}
