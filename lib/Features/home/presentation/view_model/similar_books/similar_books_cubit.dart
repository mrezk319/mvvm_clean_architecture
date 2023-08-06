import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mvvm_clean_arch/Core/errors/errors.dart';
import 'package:mvvm_clean_arch/Features/home/data/models/book_model/book_model.dart';
import 'package:mvvm_clean_arch/Features/home/data/repos/home_repo.dart';
import 'package:mvvm_clean_arch/Features/home/data/repos/home_repo_impl.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepoImpl) : super(SimilarBooksInitial());
  HomeRepoImpl homeRepoImpl;
  Future<void> getSimilarBooks({required String category}) async {
    emit(SimilarBooksInitial());
    var result = await homeRepoImpl.fetchRelevanceBooks(category: category);
    result.fold((fail) {
      emit(SimilarBooksFail(fail.errMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
