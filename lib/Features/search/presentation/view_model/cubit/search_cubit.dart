import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mvvm_clean_arch/Core/widgets/custom_error_widget.dart';
import 'package:mvvm_clean_arch/Features/home/data/repos/home_repo_impl.dart';
import 'package:mvvm_clean_arch/Features/search/data/repo/search_repo_impl.dart';

import '../../../../home/data/models/book_model/book_model.dart';

part 'search_state.dart';

class SearchCubitCubit extends Cubit<SearchCubitState> {
  SearchCubitCubit(this.searchRepoImpl) : super(SearchCubitInitial());
  SearchRepoImpl searchRepoImpl;

  Future<void> getSearchBooks({required String search}) async {
    emit(SearchBooksLoading());
    var result = await searchRepoImpl.getSearchedBooks(search: search);
    result.fold((l) {
      emit(SearchBooksFail(l.errMessage));
    }, (r) {
      emit(SearchBooksSuccess(r));
    });
    if (search.isEmpty) emit(SearchCubitInitial());
  }
}
