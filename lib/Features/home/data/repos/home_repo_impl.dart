import 'package:dartz/dartz.dart';
import 'package:mvvm_clean_arch/Core/errors/errors.dart';
import 'package:mvvm_clean_arch/Features/home/data/models/book_model/book_model.dart';
import 'package:mvvm_clean_arch/Features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}