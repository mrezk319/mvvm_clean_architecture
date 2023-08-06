part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

// ignore: must_be_immutable
class SimilarBooksSuccess extends SimilarBooksState {
  List<BookModel> books = [];
  SimilarBooksSuccess(this.books);
}

class SimilarBooksFail extends SimilarBooksState {
  final String errMess;

  SimilarBooksFail(this.errMess);
}
