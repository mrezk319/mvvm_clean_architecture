part of 'newest_books_cubit.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

// ignore: must_be_immutable
class NewestBooksSuccess extends NewestBooksState {
  List<BookModel> books = [];
  NewestBooksSuccess(this.books);
}

class NewestBooksFail extends NewestBooksState {
  final String errMess;

  NewestBooksFail(this.errMess);
}
