import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mvvm_clean_arch/Features/home/data/repos/home_repo.dart';
import 'package:mvvm_clean_arch/Features/home/data/repos/home_repo_impl.dart';

import '../../../../data/models/book_model/book_model.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  HomeRepoImpl homeRepo;
  Future<void> getNewestBooks() async {
    emit(NewestBooksInitial());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((fail) {
      emit(NewestBooksFail(fail.errMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
