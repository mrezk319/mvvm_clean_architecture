part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

// ignore: must_be_immutable
class FeaturedBooksSuccess extends FeaturedBooksState {
  List<BookModel> books = [];
  FeaturedBooksSuccess(this.books);
}

class FeaturedBooksFail extends FeaturedBooksState {
  final String errMess;

  FeaturedBooksFail(this.errMess);
}
