import 'package:dartz/dartz.dart';
import 'package:dartz/dartz_unsafe.dart';
import 'package:dio/dio.dart';
import 'package:mvvm_clean_arch/Core/errors/errors.dart';
import 'package:mvvm_clean_arch/Core/utils/api_service.dart';
import 'package:mvvm_clean_arch/Features/home/data/models/book_model/book_model.dart';
import 'package:mvvm_clean_arch/Features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.getData(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      List<BookModel> books = [];
      for (var e in data['items']) {
        books.add(BookModel.fromJson(e));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) return left(ServerFailure.fromDioError(e));
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.getData(
          endPoint: 'volumes?Filtering=free-ebooks&q=programming');
      List<BookModel> books = [];
      for (var e in data['items']) {
        books.add(BookModel.fromJson(e));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) return left(ServerFailure.fromDioError(e));
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchRelevanceBooks(
      {required String category}) async {
    try {
      var data = await apiService.getData(
          endPoint:
              'volumes?Sorting=relevance&Filtering=free-ebooks&q=$category');
      List<BookModel> books = [];
      for (var e in data['items']) {
        books.add(BookModel.fromJson(e));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) return left(ServerFailure.fromDioError(e));
      return left(ServerFailure(e.toString()));
    }
  }
}
