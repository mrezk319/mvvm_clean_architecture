part of 'search_cubit.dart';

sealed class SearchCubitState extends Equatable {
  const SearchCubitState();

  @override
  List<Object> get props => [];
}

final class SearchCubitInitial extends SearchCubitState {}

class SearchBooksLoading extends SearchCubitState {}

// ignore: must_be_immutable
class SearchBooksSuccess extends SearchCubitState {
  List<BookModel> books = [];
  SearchBooksSuccess(this.books);
}

class SearchBooksFail extends SearchCubitState {
  final String errMess;

  const SearchBooksFail(this.errMess);
}
