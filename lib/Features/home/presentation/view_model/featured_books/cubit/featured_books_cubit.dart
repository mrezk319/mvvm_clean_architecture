import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mvvm_clean_arch/Features/home/data/models/book_model/book_model.dart';
import 'package:mvvm_clean_arch/Features/home/data/repos/home_repo.dart';
import 'package:mvvm_clean_arch/Features/home/data/repos/home_repo_impl.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepoImpl homeRepo;

  Future<void> getFeaturedBooks() async {
    emit(FeaturedBooksInitial());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((fail) {
      emit(FeaturedBooksFail(fail.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
