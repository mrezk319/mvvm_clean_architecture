import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mvvm_clean_arch/Core/errors/errors.dart';
import 'package:mvvm_clean_arch/Core/utils/api_service.dart';
import 'package:mvvm_clean_arch/Features/home/data/models/book_model/book_model.dart';
import 'package:mvvm_clean_arch/Features/search/data/repo/search_repo.dart';

class SearchRepoImpl implements SearchRepo {
  ApiService apiService;
  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> getSearchedBooks(
      {required String search}) async {
    try {
      var result = await apiService.getData(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=relevance&q=$search");
      List<BookModel> books = [];
      for (var e in result["items"]) {
        try {
          books.add(BookModel.fromJson(e));
        } catch (e) {
          print("Exception $e");
        }
      }
      return Right(books);
    } catch (e) {
      if (e is DioError) return Left(ServerFailure.fromDioError(e));
      return Left(ServerFailure(e.toString()));
    }
  }
}
